#include "intro_tutorial/robotservice.h"
#include "ros/ros.h"
// NOTE: SERVER

constexpr char room_names[][1024]={"","Robot Vision Lab","SSL Lab","Neuro Lab","IAS-Lab","Auto Lab"};

bool robot_info_callback(intro_tutorial::robotservice::Request &req,
         intro_tutorial::robotservice::Response &res) {
  //  res.sum = req.A + req.B + req.C;
  static int roomID = 1;
  static float battery_level = 1.0f;
  res.response_data.roomID = roomID;
  res.response_data.name = room_names[roomID];
  res.response_data.battery_level =battery_level;
  ROS_INFO("sending back response: [%d]", (int)res.response_data.roomID);
  roomID = roomID%5+1;
  battery_level = fmod(battery_level-0.01,1);
  return true;
}


int main(int argc, char **argv) {
  ros::init(argc, argv, "robot_server");
  ros::NodeHandle n;
  ros::ServiceServer service = n.advertiseService("robot_service", robot_info_callback);
  ROS_INFO("Ready to answer to charging stations.");
  ros::spin();
  return 0;
}
