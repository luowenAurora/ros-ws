#include "ros/ros.h"
#include<sensor_msgs/PointCloud2.h>
#include"pcl-1.8/pcl/point_cloud.h"
#include"pcl-1.8/pcl/point_types.h"
#include"pcl_conversions/pcl_conversions.h"
#include"pcl-1.8/pcl/filters/passthrough.h"
ros::Publisher laser_pub;
void laserCallback(sensor_msgs::PointCloud2ConstPtr lasercloudmsg){
    pcl::PointCloud<pcl::PointXYZI>::Ptr lasercloud_in(new pcl::PointCloud<pcl::PointXYZI>);
    pcl::PointCloud<pcl::PointXYZI>::Ptr lasercloud_filtered(new pcl::PointCloud<pcl::PointXYZI>);

    pcl::fromROSMsg(*lasercloudmsg,*lasercloud_in);

    pcl::PassThrough<pcl::PointXYZI> pass;
    pass.setInputCloud(lasercloud_in);
    pass.setFilterFieldName("x");
    pass.setFilterLimits(0.0,1000);
    pass.setNegative(false);
    pass.filter(*lasercloud_filtered);

    sensor_msgs::PointCloud2 cloud_filtered_msg;
    pcl::toROSMsg(*lasercloud_filtered,cloud_filtered_msg);
    cloud_filtered_msg.header.stamp = ros::Time::now();
    cloud_filtered_msg.header.frame_id = "baselink";
    laser_pub.publish(cloud_filtered_msg);
}

int main(int argc, char *argv[])
{
    ros::init(argc,argv,"passthrough");
    ros::NodeHandle n;

    ros::Subscriber laser_sub = n.subscribe<sensor_msgs::PointCloud2>("velodyne_points",10,laserCallback);
    laser_pub = n.advertise<sensor_msgs::PointCloud2>("filteredCloud",10);
    ros::spin();
    return 0;
}

