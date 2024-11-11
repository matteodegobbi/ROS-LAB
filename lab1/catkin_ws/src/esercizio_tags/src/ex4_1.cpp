#include "ros/ros.h"
#include "apriltag_ros/AprilTagDetectionArray.h"
#include "geometry_msgs/PoseStamped.h"
#include "geometry_msgs/Point.h"
#include <tf2_ros/transform_listener.h>
#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

void messageCallback(const apriltag_ros::AprilTagDetectionArray::ConstPtr& msg,
                     tf2_ros::Buffer& tfBuffer)
{
    for (const auto& detection : msg->detections) {
        try {
            // crea una transfom che porta nelle coordinate del frame /base_link
            geometry_msgs::TransformStamped transformStamped = tfBuffer.lookupTransform(
                "base_link",  
                detection.pose.header.frame_id,  // frame della camera
                ros::Time(0),  
                ros::Duration(1.0)  
            );

            geometry_msgs::PoseStamped pose_in_camera_frame;
            pose_in_camera_frame.pose = detection.pose.pose.pose;
            pose_in_camera_frame.header = detection.pose.header;

            // esegue la transform
            geometry_msgs::PoseStamped pose_in_base_frame;
            tf2::doTransform(pose_in_camera_frame, pose_in_base_frame, transformStamped);



            geometry_msgs::Point detection_position = pose_in_camera_frame.pose.position;
            geometry_msgs::Point position = pose_in_base_frame.pose.position;
            ROS_INFO("Tag ID: %d - Detected Position in camera frame: (x: %f, y: %f, z: %f)",
                     detection.id[0], detection_position.x, detection_position.y, detection_position.z);
            ROS_INFO("Tag ID: %d - Transformed Position in base_link frame: (x: %f, y: %f, z: %f)",
                     detection.id[0], position.x, position.y, position.z);

        } catch (tf2::TransformException& ex) {
            ROS_WARN("Could not transform tag pose: %s", ex.what());
        }
    }
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "listener");
    ros::NodeHandle n;

    // Create a TF2 buffer and listener to manage transforms
    tf2_ros::Buffer tfBuffer;
    tf2_ros::TransformListener tfListener(tfBuffer);

    // Subscribe to the AprilTag detections topic
    ros::Subscriber sub = n.subscribe<apriltag_ros::AprilTagDetectionArray>(
        "/tag_detections", 1000, boost::bind(messageCallback, _1, boost::ref(tfBuffer)));

    ROS_INFO("Waiting for tag detections...");
    ros::spin();

    return 0;
}

