#include "ros/ros.h"
#include "geometry_msgs/Twist.h"

int main(int argc, char **argv)
{
    ros::init(argc, argv, "circleturtle_cpp_n");
    ros::NodeHandle nh;
    ros::Publisher vel_pub_cpp = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
    ros::Rate loop_hz(20);
    geometry_msgs::Twist velocity_v;
    velocity_v.linear.x = 1;
    velocity_v.angular.z = 1;
    
    while(ros::ok())
    {
        vel_pub_cpp.publish(velocity_v);
        loop_hz.sleep();
    }
    return 0;
}
