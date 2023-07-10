#include <iostream>
#include<opencv2/opencv.hpp>
#include<arm_neon.h>
#include <chrono>
#include <stdlib.h>

using namespace cv;
using namespace std;
 
Mat moveCheck(Mat &frontFrame,Mat &afterFrame)
{
    Mat frontGray,afterGray,diff;
    Mat resFrame=afterFrame.clone();
    //灰度处理,节省运算时间
    cvtColor(frontFrame,frontGray,CV_BGR2GRAY);
    cvtColor(afterFrame,afterGray,CV_BGR2GRAY);
    //帧差处理  找到两帧之间运动物体差异
    //缺点:会捕捉所有运动的物体,没办法专门捕捉某个目标
    absdiff(frontGray,afterGray,diff);
 
    //二值化: 使其变得更加黑白分明,便于计算,会产生噪点
    threshold(diff,diff,25,255,CV_THRESH_BINARY);
 
    //腐蚀处理:去除大部分的白色噪点
    Mat element = cv::getStructuringElement(MORPH_RECT,Size(4,4));//小于4*4方块的白色噪点都会被腐蚀
    erode(diff,diff,element);
 
    //膨胀处理:将白色区域变"胖",便于识别
    Mat element2=cv::getStructuringElement(MORPH_RECT,Size(30,30));
    dilate(diff,diff,element2);
    //动态物体标记
    vector<vector<Point>>contours;//用于保存关键点
    findContours(diff,contours,CV_RETR_EXTERNAL,CV_CHAIN_APPROX_SIMPLE,Point(0,0));
    //提取关键点
    vector<vector<Point>>contours_poly(contours.size());
    vector<Rect>boundRect(contours.size());
    int x,y,w,h;
    int num=contours.size();
    for(int i=0;i<num;i++)
    {
        approxPolyDP(Mat(contours[i]),contours_poly[i],3,true);
        boundRect[i]=boundingRect(Mat(contours_poly[i]));
        x=boundRect[i].x;
        y=boundRect[i].y;
        w=boundRect[i].width;
        h=boundRect[i].height;
        //绘制
        rectangle(resFrame,Point(x,y),Point(x+w,y+h),Scalar(0,255,0),2);
    }
    return resFrame;
}
 
int main(int argc, char *argv[])
{
    Mat frame;
 
    Mat temp;
    Mat res;
    int num=0;
    VideoCapture cap("D:/VideoTraining/carMove.mp4");
    while (cap.read(frame))
    {
        num++;
        if(num==1)
        {//如果为第一帧则把当前帧传入(即不产生效果)
 
            res=moveCheck(frame,frame);
        }
        else
        {//从第二帧开始才有差帧
            res=moveCheck(temp,frame);
 
        }
        temp=frame.clone();//此处注意要调用.clone深拷贝,否则会出现两个画面一样的情况
        imshow("frame",frame);
        imshow("res",res);
        waitKey(25);
    }
    return 0;
}

