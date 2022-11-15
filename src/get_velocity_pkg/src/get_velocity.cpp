#include "ros/ros.h"
#include <scout_msgs/ScoutStatus.h>// 接收到订阅的消息后，会进入消息回调函数

void poseCallback(scout_msgs::ScoutStatus msg)
{
   // 将接收到的消息打印出来
    double linear,angular;
   linear = msg.linear_velocity;
   angular = msg.angular_velocity;
    ROS_INFO("linear velocity:%0.2f, angular velocity:%0.2f",linear , angular);
    
}
 
int main(int argc, char **argv)
{
     // 初始化ROS节点
     ros::init(argc, argv, "getvelocity");
 
     // 创建节点句柄
     ros::NodeHandle n;
 
     // 创建一个Subscriber，订阅名为/scout_status的topic，注册回调函数poseCallback
     ros::Subscriber pose_sub = n.subscribe("/scout_status", 10, poseCallback);
 
     // 循环等待回调函数
     ros::spin();
 
     return 0;
}

