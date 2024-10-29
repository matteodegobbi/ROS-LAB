#include "ros/ros.h"
#include "intro_tutorial/msg1.h"
void messageCallback(const
    intro_tutorial::msg1::ConstPtr& msg)
{
  ROS_INFO("I heard: [%s] [%d] [%f]", msg->name.c_str(),
      msg->roomID, msg->battery_level);
}
int main(int argc, char **argv)
{
  ros::init(argc, argv, "listener");
  ros::NodeHandle n;
  ros::Subscriber sub = n.subscribe("message",
      1000, messageCallback);
  ros::spin();
  return 0;
}
