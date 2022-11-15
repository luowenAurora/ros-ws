#include<ros/ros.h>
#include<fstream>
#include<geometry_msgs/Twist.h>

int main(int argc, char **argv)
{
	ros::init(argc,argv,"velocity_publisher");
	ros::NodeHandle n;
	ros::Publisher turtle_vel_pub = n.advertise<geometry_msgs::Twist>("/cmd_vel",10);
	ros::Rate loop_rate(10);
	int count = 0;
	std::ofstream fout("/home/agilex/ros_ws/src/get_velocity_pkg/src/velocity.txt");
	fout<<count<<" "<<count<<std::endl;
	fout.close();
	while (ros::ok())
	{
		geometry_msgs::Twist vel_msg;
		double lin,ang,x,y,z,s;
		std::ifstream fin("/home/agilex/ros_ws/src/get_velocity_pkg/src/velocity.txt");
		fin>>vel_msg.linear.x>>vel_msg.angular.z;
		// std::cout<<vel_msg.linear.x<<vel_msg.angular.z;
		turtle_vel_pub.publish(vel_msg);
		ROS_INFO("publish car velocity command[%0.2f m/s,%0.2f rad/s]",
				vel_msg.linear.x,vel_msg.angular.z);
	loop_rate.sleep();
	}
	return 0;
}
