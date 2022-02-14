#include "ros/ros.h"
#include "geometry_msgs/Twist.h"
#include <stdlib.h>
#include "turtlesim/SetPen.h"
#include "turtlesim/Pose.h"

bool hit_the_wall;
bool hit_the_wall_prev;

void cpp_callback(turtlesim:: Pose pose_message)
{
    hit_the_wall  = (pose_message.x < 2)||(pose_message.x >8) ||  (pose_message.y<2)||(pose_message.y>8);
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "clientchangepen_cpp_n");
    ros::NodeHandle nh;
    ros::Publisher vel_pub_cpp = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
    ros::Subscriber pose_sub_cpp = nh.subscribe("turtle1/pose", 10, cpp_callback);
    ros::Rate loop_hz(20);
    ros::ServiceClient changepen_hanlde_cpp = nh.serviceClient<turtlesim::SetPen>("turtle1/set_pen");
    changepen_hanlde_cpp.waitForExistence();

    geometry_msgs::Twist velocity_v;
    velocity_v.linear.x = 1;
    //velocity_v.angular.z = 1;
    turtlesim::SetPen moveIn, moveOut;
    moveIn.request.r =0;
    moveIn.request.b =0;
    moveIn.request.g =0;
    moveIn.request.width =5;
    moveIn.request.off =0;

    moveOut.request.r =255;
    moveOut.request.g =255;
    moveOut.request.b =255;
    moveOut.request.off =0;
    moveOut.request.width =5;
    
    while(ros::ok())
    {
        //velocity_v.angular.z = (double)rand()/(double)RAND_MAX;
        if(hit_the_wall)
        {
            velocity_v.angular.z = 2;
        }
        else 
        {
            velocity_v.angular.z = 0;
        }

        if(hit_the_wall == 1 and hit_the_wall_prev == 0)
        {
            changepen_hanlde_cpp.call(moveOut);
        }
                if(hit_the_wall == 0 and hit_the_wall_prev == 1)
        {
            changepen_hanlde_cpp.call(moveIn);
        }
        
        hit_the_wall_prev =hit_the_wall;

        vel_pub_cpp.publish(velocity_v);
        loop_hz.sleep();
        ros::spinOnce();
    }
    return 0;
}
