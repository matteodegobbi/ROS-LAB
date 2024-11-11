#include "ros/ros.h"
#include "apriltag_ros/AprilTagDetectionArray.h"
#include "geometry_msgs/PoseWithCovarianceStamped.h"
#include "geometry_msgs/Point.h"
void messageCallback(const
    apriltag_ros::AprilTagDetectionArray::ConstPtr& msg)
{
  ROS_INFO("I heard callback");//msg->detections[0].id);
  for(auto& detection : msg->detections){
    geometry_msgs::Point position = detection.pose.pose.pose.position;
    ROS_INFO("Position:(x:%f,y:%f,z:%f)\n",position.x,position.y,position.z);
  }
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("/tag_detections",
      1000, messageCallback);

  ROS_INFO("GIRA...............");
  ros::spin();
  return 0;
}
