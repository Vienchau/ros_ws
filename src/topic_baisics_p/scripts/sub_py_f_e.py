#!/usr/bin/python
from cgitb import handler
import rospy
from std_msgs.msg import String

def py_callback(rcvd_msg):
    rospy.loginfo("i heard: %s", rcvd_msg.data)

rospy.init_node("sub_py_n")
sub_handle_py =  rospy.Subscriber("my_first_t", String, py_callback, queue_size=10)
rospy.spin()
