#include "ros/ros.h"
#include "intro_tutorial/srv1.h"
bool add(intro_tutorial::robotservice::Request &req,
    intro_tutorial::robotservice::Response &res)
{
//  res.sum = req.A + req.B + req.C;
res.room_id = random_device rd;
    mt19937 gen(rd());
    uniform_int_distribution<> distrib(0, 20);

    // Generate random number in the range [min, max]
    int randomValue = distrib(gen);
//  ROS_INFO("request: A=%d, B=%d C=%d", (int)req.A,
      (int)req.B, (int)req.C);
  ROS_INFO("sending back response: [%ld]",
      (int)res.room_id);
  return true;
}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_3_ints_server");
  ros::NodeHandle n;
  ros::ServiceServer service =
    n.advertiseService("add_3_ints", add);
  ROS_INFO("Ready to add 3 ints.");
  ros::spin();
  return 0;
}
