// 实验任务一
//odometry by coordinate
#include "ros/ros.h"
#include "nav_msgs/Odometry.h"
#include "geometry_msgs/Twist.h"
#include "geometry_msgs/TwistWithCovariance.h"
#include <ros/time.h>
#include <cmath>
#include <algorithm>

using namespace std;

double odometry=0.0,rangeMax=0.03,rangeMin=-0.03;    //滤除微小扰动
double start_x,start_y,delta_x,delta_y;
double startTime,totalTime;//开始秒，纳秒，一次数据传输总时间。
double speed;//速度 m/s
bool flag = false;

void odomCallback(nav_msgs::Odometry msg){
if(!flag){//第一份报文
//startTime = msg.header.stamp.toSec();
//speed = msg.twist.twist.linear.x;
start_x = msg.pose.pose.position.x;
start_y = msg.pose.pose.position.y;
flag = true;
return;
}
//totalTime = msg.header.stamp.toSec()-startTime;
delta_x = msg.pose.pose.position.x - start_x;
delta_y = msg.pose.pose.position.y - start_y;
// if(speed>=rangeMin&&speed<=rangeMax){
// odometry = odometry+speed*totalTime;
// }else{
// odometry = odometry+abs(speed)*totalTime;
// }
odometry = odometry + sqrt(delta_x * delta_x + delta_y * delta_y);
// startTime = msg.header.stamp.toSec();
// speed = msg.twist.twist.linear.x;
start_x = msg.pose.pose.position.x;
start_y = msg.pose.pose.position.y;
ROS_INFO("odometry by coordinate:%.2f",odometry*1.05);
// ROS_INFO("speed: %.2f",speed);
}

int main(int argc,char *argv[]){
setlocale(LC_ALL,"");
ros::init(argc,argv,"odometry_node");

ros::NodeHandle n;
ros::Subscriber odom_sub = n.subscribe("/odom",10,odomCallback);

ros::spin();

return 0;
}

