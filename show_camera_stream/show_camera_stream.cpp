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
	//cap.set(CV_CAP_PROP_FRAME_WIDTH, 640);
  //cap.set(CV_CAP_PROP_FRAME_HEIGHT, 360);
  cap.set(CV_CAP_PROP_FRAME_WIDTH, 320);
  cap.set(CV_CAP_PROP_FRAME_HEIGHT, 180);
  
  Mat frame;
	while(1){
    // Capture frame-by-frame
    cap >> frame;
    // If the frame is empty, break immediately
    if (frame.empty()){break;}
    // Display the resulting frame
    imshow( "Frame", frame );
    
  	//usleep(500000);
  	waitKey(200);
		// Press  ESC on keyboard to exit
    char c=(char)waitKey(25);
    if(c==27)
      break;
  }
 	// When everything done, release the video capture object
  cap.release();
  // Closes all the frames
  destroyAllWindows();
  return 0;
}

