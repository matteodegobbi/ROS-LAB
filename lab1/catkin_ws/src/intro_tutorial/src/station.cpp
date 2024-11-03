#include "intro_tutorial/robotservice.h"
#include "ros/ros.h"
#include <cstdlib>
// NOTE: CLIENT
int main(int argc, char **argv) {
  ros::init(argc, argv, "station_client");
  if (0 && argc <3) {
    ROS_INFO("usage: station_id, delay_seconds");
    return 1;
  }
  ros::NodeHandle n;
  ros::ServiceClient client =
    n.serviceClient<intro_tutorial::robotservice>("robot_service");
  intro_tutorial::robotservice srv;
  srv.request.station_id = atoll(argv[1]);
  int delay_seconds = atol(argv[2]);
  ros::Rate loop_rate(1/(float)delay_seconds);

  while (ros::ok()){
    if (client.call(srv)) {
      ROS_INFO("station#%d,roomID: %ld,room name: %s, battery: %f",atol(argv[1]),
               (long int)srv.response.response_data.roomID,
               srv.response.response_data.name.c_str(),
               srv.response.response_data.battery_level);
    } else {
      ROS_ERROR("Failed to call service robot_service");
      return 1;
    }
    ros::spinOnce();
    loop_rate.sleep();
  }
  return 0;
}
