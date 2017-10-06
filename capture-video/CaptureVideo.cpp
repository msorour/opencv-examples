/*
This program captures and displays 2 video streams from a sterovision usb camera
*/
#include <iostream> // for standard I/O
#include <string>   // for strings
#include <iomanip>  // for controlling float print precision
#include <sstream>  // string to number conversion

#include <opencv2/core/core.hpp>        // Basic OpenCV structures (cv::Mat, Scalar)
#include <opencv2/imgproc/imgproc.hpp>  // Gaussian Blur
#include <opencv2/highgui/highgui.hpp>  // OpenCV window I/O

using namespace std;
using namespace cv;

int main(int argc, char** argv)
{
	VideoCapture cam1(1);
	VideoCapture cam2(2);
	if(!cam1.isOpened()){
	  cout  << "Could not open the input video: " << 1 << endl;
	  return -1;
	}
	if(!cam2.isOpened()){
	  cout  << "Could not open the input video: " << 2 << endl;
	  return -1;
	}
  
  Size S = Size((int) cam1.get(CV_CAP_PROP_FRAME_WIDTH),    // Acquire input size
                  (int) cam1.get(CV_CAP_PROP_FRAME_HEIGHT));
  cout << "video size = " << S << endl;
  cout << "frame rate = " << cam1.get(CV_CAP_PROP_FPS) << endl; 
  cout << "format = " << cam1.get(CV_CAP_PROP_FORMAT) << endl;
  cout << "capture mode = " << cam1.get(CV_CAP_PROP_MODE) << endl;
  
  cam1.set(CV_CAP_PROP_FRAME_WIDTH, 320);
  cam1.set(CV_CAP_PROP_FRAME_HEIGHT, 240);
  
  cam2.set(CV_CAP_PROP_FRAME_WIDTH, 320);
  cam2.set(CV_CAP_PROP_FRAME_HEIGHT, 240);
  
  S = Size((int) cam1.get(CV_CAP_PROP_FRAME_WIDTH),    // Acquire input size
                  (int) cam1.get(CV_CAP_PROP_FRAME_HEIGHT));
  cout << "video size after resize = " << S << endl;
  
  
  
	Mat frame1, frame2;
	Mat grey1, grey2;
	
	namedWindow("original1", WINDOW_AUTOSIZE);
	namedWindow("original2", WINDOW_AUTOSIZE);
	namedWindow("grey1", WINDOW_AUTOSIZE);
	namedWindow("grey2", WINDOW_AUTOSIZE);
	
	moveWindow("original1", 0, 0);
	moveWindow("original2", 0, 310);
	moveWindow("grey1", 400, 0);
	moveWindow("grey2", 400, 310);
	
	while(1){
		cam1 >> frame1; // get a new frame from camera
		cam2 >> frame2;
		if (frame1.empty()) break;
		if (frame2.empty()) break;
		cvtColor(frame1, grey1, CV_BGR2GRAY);
		cvtColor(frame2, grey2, CV_BGR2GRAY);
		imshow("original1", frame1);
		imshow("original2", frame2);
		imshow("grey1", grey1);
		imshow("grey2", grey2);
		if(waitKey(30) >= 0) break;
	}
	destroyAllWindows();
	
	// the camera will be deinitialized automatically in VideoCapture destructor
	return 0;

}
