#include "ros/ros.h"
#include "intro_tutorial/msg1.h"
#include <sstream>
int main(int argc, char **argv)
{
  ros::init(argc, argv, "talker");
  ros::NodeHandle n;
  ros::Publisher pub =
    n.advertise<intro_tutorial::msg1>("message",
        1000);
  ros::Rate loop_rate(5);
  int current_roomID = 0;
  char room_names[5][100]={"a","sdc","ae","tt","rasd"};
  float current_battery=1.0f;
  while (ros::ok())
  {
    intro_tutorial::msg1 msg;
    msg.roomID = current_roomID++;
    msg.name = "ciao";
    msg.battery_level = current_battery;
    current_battery -= 0.1;
    pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
