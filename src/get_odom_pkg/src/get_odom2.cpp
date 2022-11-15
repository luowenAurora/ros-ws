// 实验任务一
#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/TwistWithCovariance.h"
#include <ros/time.h>
#include <cmath>
#include <algorithm>

using namespace std;

double odometry=0.0,rangeMax=0.003,rangeMin=-0.003;
double startTime,totalTime;//开始秒，纳秒，一次数据传输总时间。
double speed;//速度 m/s
bool flag = false;

void IMUCallback(nav_msgs::Odometry msg){
    if(!flag){//第一份报文
        startTime = msg.header.stamp.toSec();
        speed = msg.twist.twist.linear.x;
        flag = true;
        return;
}
    totalTime = msg.header.stamp.toSec()-startTime;
    if(speed>=rangeMin&&speed<=rangeMax){
        odometry = odometry+speed*totalTime;
    }else{
        odometry = odometry+abs(speed)*totalTime;
    }
    startTime = msg.header.stamp.toSec();
    speed = msg.twist.twist.linear.x;
    ROS_INFO("mileage：%.3f",odometry*1.05);
    ROS_INFO("speed: %.3f",speed);
}

    int main(int argc,char *argv[]){
    setlocale(LC_ALL,"");
    ros::init(argc,argv,"odometry_node");

    ros::NodeHandle n;
    ros::Subscriber imu_sub = n.subscribe("/odom",10,IMUCallback);

    ros::spin();

    return 0;
}
