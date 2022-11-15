#include <iostream>
#include<string>
#include<vector>
#include<pcl-1.8/pcl/io/pcd_io.h>
#include<pcl-1.8/pcl/point_types.h>
#include<pcl-1.8/pcl/point_cloud.h>
#include<pcl-1.8/pcl/visualization/pcl_visualizer.h>
#include<boost/thread/thread.hpp>
#include<boost/random.hpp>

using namespace std;
boost::random::mt19937 gen(time((time_t *)NULL));

boost::shared_ptr<pcl::visualization::PCLVisualizer> customHandler(pcl::PointCloud<pcl::PointXYZ>::Ptr cloud)
{
	boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer(new pcl::visualization::PCLVisualizer);
	pcl::visualization::PointCloudColorHandlerCustom<pcl::PointXYZ> rgb(cloud, 0, 255, 255);
	viewer->addPointCloud(cloud, rgb, "sample cloud");
	return viewer;
}

void VisualizeCloud(pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud_inliter, pcl::PointCloud<pcl::PointXYZ>::Ptr& raw_cloud_ptr);

vector<int> RANSAC (const pcl::PointCloud<pcl::PointXYZ>& r_sample, int iter_maxNum,float maxD){
    int RSample_pointsNum = r_sample.width, iterNum = 0;
    int inPlaneNum_max = 0;
    float A_best = 0, B_best=0,C_best=0,D_best=0;
    vector<int> inliers_best;
    boost::uniform_int<> real(0,RSample_pointsNum-1);
    while((iterNum <iter_maxNum) && inPlaneNum_max <= RSample_pointsNum)
    {
        vector<int> inliers ={};
        int inPlaneNum_t = 0;

        float x1=0,x2=0,y1=0,y2=0;
        while(1){
            int rand_i_1 = real(gen);
            int rand_i_2 = real(gen);
            if(rand_i_1 != rand_i_2){
                x1=r_sample[rand_i_1].x;x2=r_sample[rand_i_2].x;
                y1=r_sample[rand_i_1].y;y2=r_sample[rand_i_2].y;
                break;
            }
        }

        //求直线方程
        float A_t = (y2-y1);
        float B_t = (x2-x1);
        float C_t = (x2-x1)*y1-x1*(y2-y1);

        //求在直线模型内点个数
        float temp=sqrt(A_t*A_t+B_t*B_t);

        for(int i=0;i<RSample_pointsNum;i++)
        {
            float temp_D = abs(A_t*r_sample[i].x+B_t*r_sample[i].y+C_t)/temp;//点到直线距离
            if(temp_D <maxD)
            {
                inPlaneNum_t++;
                inliers.push_back(i);
            }
        }

        //与最优（最大）个数比较，保留最优的直线公式
        if(inPlaneNum_t > inPlaneNum_max)
        {
            A_best=A_t;
            B_best=B_t;
            C_best=C_t;
            inPlaneNum_max = inPlaneNum_t;
            inliers_best=inliers;
        }
        iterNum++; //迭代次数+1
    }

    return inliers_best;
}

int main(){
    string pcd_path="/home/agilex/ros_ws/src/ransac/line.pcd";
    pcl::PointCloud<pcl::PointXYZ> raw_cloud;
    pcl::PCDReader reader;
    reader.read(pcd_path,raw_cloud);
    std::cout<<"--------raw points--------------"<<std::endl;
    std::cout<<raw_cloud.size()<<std::endl;
    float maxD = 0;
    int max_nums=0;
    cout<<"input distance threshold:"; //距离阈值
    cin>>maxD;
    cout<<"input the number of iterations:"; //迭代次数
    cin>>max_nums;

    vector<int> inliters = RANSAC(raw_cloud,max_nums,maxD);
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_inliter(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::copyPointCloud(raw_cloud,inliters,*cloud_inliter);
    pcl::PointCloud<pcl::PointXYZ>::Ptr raw_cloud_ptr(new pcl::PointCloud<pcl::PointXYZ>);
    raw_cloud_ptr = raw_cloud.makeShared();

    VisualizeCloud(cloud_inliter,raw_cloud_ptr);

    return 0;
}

void VisualizeCloud(pcl::PointCloud<pcl::PointXYZ>::Ptr& cloud, pcl::PointCloud<pcl::PointXYZ>::Ptr& filter_cloud) {
	//---------显示点云-----------------------
	boost::shared_ptr<pcl::visualization::PCLVisualizer> viewer(new pcl::visualization::PCLVisualizer("显示点云"));

	int v1(0), v2(0);
	viewer->createViewPort(0.0, 0.0, 0.5, 1.0, v1);
	viewer->setBackgroundColor(0, 0, 0, v1);
	viewer->addText("point clouds", 10, 10, "v1_text", v1);
	viewer->createViewPort(0.5, 0.0, 1, 1.0, v2);
	viewer->setBackgroundColor(0.1, 0.1, 0.1, v2);
	viewer->addText("filtered point clouds", 10, 10, "v2_text", v2);
	pcl::visualization::PointCloudColorHandlerGenericField<pcl::PointXYZ> fildColor(cloud, "z"); // 按照z字段进行渲染,将z改为x或y即为按照x或y字段渲染
	viewer->addPointCloud<pcl::PointXYZ>(cloud, fildColor, "sample cloud", v1);

    pcl::visualization::PointCloudColorHandlerGenericField<pcl::PointXYZ> fildColor_filtered(cloud, "z"); // 按照z字段进行渲染,将z改为x或y即为按照x或y字段渲染
	viewer->addPointCloud<pcl::PointXYZ>(filter_cloud, fildColor_filtered,"cloud_filtered", v2);
	viewer->addCoordinateSystem(1.0);
	viewer->initCameraParameters();
	while (!viewer->wasStopped())
	{
		viewer->spinOnce(100);
		boost::this_thread::sleep(boost::posix_time::microseconds(100000));
	}
}
