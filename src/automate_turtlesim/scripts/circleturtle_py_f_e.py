#!/usr/bin/python

import rospy
from geometry_msgs.msg import Twist

rospy.init_node('circleturtle_py_n')
vel_pub_py = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=10)
loop_rate = rospy.Rate(20)

velocity_v= Twist()
velocity_v.linear.x =1
velocity_v.angular.z = 1

while not rospy.is_shutdown():
    vel_pub_py.publish(velocity_v)
    loop_rate.sleep()
