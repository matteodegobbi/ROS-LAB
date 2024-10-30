#include "ros/ros.h"
#include "intro_tutorial/srv1.h"
#include "intro_tutorial/robotservice.h"
#include <cstdlib>
int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_3_ints_client");
  if (0 && argc != 4)
  {
    ROS_INFO("usage: add_3_ints_client A B C ");
    return 1;
  }
  ros::NodeHandle n;
  ros::ServiceClient client =
    n.serviceClient<intro_tutorial::robotservice>("add_3_ints");
  intro_tutorial::robotservice srv;
  srv.request.station_id = 42;
  //srv.request.A = atoll(argv[1]);
  //srv.request.B = atoll(argv[2]);
  //srv.request.C = atoll(argv[3]);
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.room_id);
  }
  else
  {
    ROS_ERROR("Failed to call service add_3_ints");
    return 1;
  }
  return 0;
}
