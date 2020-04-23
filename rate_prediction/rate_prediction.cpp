#include <errno.h>
#include <fcntl.h>
#include <linux/videodev2.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <unistd.h>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>

#include <iostream> // for standard I/O
#include <string>   // for strings
#include <iomanip>  // for controlling float print precision
#include <sstream>  // string to number conversion

#include <tesseract/baseapi.h>
#include <leptonica/allheaders.h>
#include <opencv2/opencv.hpp>

#include <curses.h>

using namespace std;
using namespace cv;

int main(int argc, char** argv){	
  // Create a VideoCapture object and open the input file
  // If the input is the web camera, pass 0 instead of the video file name
  VideoCapture cap(2); 
  
  // Check if camera opened successfully
  if(!cap.isOpened()){cout << "Error opening video stream or file" << endl;return -1;}
	cap.set(CV_CAP_PROP_FPS, 5);
	cap.set(CV_CAP_PROP_FRAME_WIDTH, 320);
  cap.set(CV_CAP_PROP_FRAME_HEIGHT, 180);
  
	// Create Tesseract object
  //tesseract::Dict::GlobalDawgCache();
  static tesseract::TessBaseAPI *ocr = new tesseract::TessBaseAPI();
  // Initialize tesseract to use English (eng) and the LSTM OCR engine. 
  ocr->Init(NULL, "eng", tesseract::OEM_LSTM_ONLY);
	// Set Page segmentation mode to PSM_AUTO (3)
  ocr->SetPageSegMode(tesseract::PSM_AUTO);
  
	Mat frame;
	string outText, exchange_rate_string, exchange_id;
	double exchange_rate, start_exchange_rate, last_exchange_rate, profit_percentage=1.0005;
	double average_rate_GBP_to_USD=0.0, average_rate_USD_to_GBP=0.0, total_GBP=0.0, total_USD=0.0;
  int i=0, i_GBP=0, i_USD=0;
  
  while(1){
    // Capture frame-by-frame
    cap >> frame;
    // If the frame is empty, break immediately
    if (frame.empty()){break;}
    // Display the resulting frame
    imshow( "Frame", frame );
    
    // Detect text
		// Set image data
    ocr->SetImage(frame.data, frame.cols, frame.rows, 3, frame.step);
    //ocr->SetVariable("lstm_choice_mode", "2");
		// Run Tesseract OCR on image
    outText = string(ocr->GetUTF8Text());
		
		// print recognized text
    //cout << outText << endl; // Destroy used object and release memory ocr->End();
  	
  	if(outText.size()>0){
  		i++;
  		exchange_rate_string = outText.substr(outText.size()-1-6, 6);
  		//exchange_rate = std::stod (exchange_rate_string);
  		try {exchange_rate = std::stod (exchange_rate_string);} 
  		catch (std::invalid_argument & err) {cout << "std::stod() exception occured !" << endl;continue;}
  		
  		if(i==1){start_exchange_rate = exchange_rate;	last_exchange_rate = exchange_rate;}
  		
  		if( (exchange_rate-last_exchange_rate>0.3) or (exchange_rate-last_exchange_rate<-0.3) ){break;}	// to avoid text to number conversion error
  		
			if(outText.find("= £") < 1000){		// .find() gives very high number if nothing found !
				i_GBP++;
				exchange_id = "Buy £";
				total_GBP += exchange_rate;
				average_rate_USD_to_GBP = total_GBP/i_GBP;
				average_rate_GBP_to_USD = 1.0/average_rate_USD_to_GBP;
				
				previous_rate_GBP_to_USD = previous_exchange_rate;
				previous_rate_USD_to_GBP = 1.0/previous_exchange_rate;
				
				target_rate_USD_to_GBP = previous_rate_USD_to_GBP*profit_percentage;
				cout << exchange_id << ", " << exchange_rate << ", previous: " << previous_rate_USD_to_GBP << ", target: " << target_rate_USD_to_GBP << endl;
				
				if(exchange_rate >= target_rate_USD_to_GBP){
					cout << "Exchange NOW - Exchange NOW - Exchange NOW - Exchange NOW - Exchange NOW " << endl;cout << '\a';}
			}
			else if(outText.find("£1 =") < 1000){
				exchange_id = "Buy $";
				i_USD++;
				total_USD += exchange_rate;
				average_rate_GBP_to_USD = total_USD/i_USD;
				average_rate_USD_to_GBP = 1.0/average_rate_GBP_to_USD;
				
				previous_rate_USD_to_GBP = previous_exchange_rate;
				previous_rate_GBP_to_USD = 1.0/previous_exchange_rate;
				
				target_rate_GBP_to_USD = previous_rate_GBP_to_USD*profit_percentage;
				cout << exchange_id << ", " << exchange_rate << ", previous: " << previous_rate_GBP_to_USD << ", target: " << target_rate_GBP_to_USD << endl;
				
				if(exchange_rate >= target_rate_GBP_to_USD){
					cout << "Exchange NOW - Exchange NOW - Exchange NOW - Exchange NOW - Exchange NOW " << endl;cout << '\a';}
  		}
  		
  		last_exchange_rate = exchange_rate;
			
			//cout << exchange_id << ",         " << exchange_rate << ", equivalent to = " << 1.0/exchange_rate << endl;
			//cout << "average rate = " << average_rate_GBP_to_USD << ", equivalent to = " << average_rate_USD_to_GBP << endl;
  	}
  	
  	//usleep(500000);
  	waitKey(200);
		// Press  ESC on keyboard to exit
    char c=(char)waitKey(25);
    if(c==27)
      break;
  }
 	
 	// Destroy used object and release memory
  ocr->End();
  delete ocr;
  // When everything done, release the video capture object
  cap.release();
  // Closes all the frames
  destroyAllWindows();
  return 0;
}

