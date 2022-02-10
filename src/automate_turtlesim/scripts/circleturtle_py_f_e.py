#!/usr/bin/python
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg  import Pose

hit_the_wall = None

def callback(pose_message):
    global hit_the_wall
    hit_the_wall = (pose_message.x < 2) or (pose_message.x >9) or (pose_message.y<2) or (pose_message.y >9)


rospy.init_node('circleturtle_py_n')
vel_pub_py = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=10)
pose_sub_py = rospy.Subscriber("turtle1/pose", Pose, callback, queue_size=10)
loop_rate = rospy.Rate(20)

velocity_v= Twist()
velocity_v.linear.x =1
#velocity_v.angular.z = 1

while not rospy.is_shutdown():
    #vel_pub_py.publish(velocity_v)
    if(hit_the_wall):
        velocity_v.angular.z = 2
    else:
        velocity_v.angular.z = 0
    vel_pub_py.publish(velocity_v)
    loop_rate.sleep()
