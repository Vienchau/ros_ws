#!/home/vienchau/anaconda3/bin/python
from site import check_enableusersite
import rospy
from geometry_msgs.msg import Twist
from turtlesim.msg  import Pose
from turtlesim.srv import SetPen

hit_the_wall = None
hit_the_wall_prev = None
def callback(pose_message):
    global hit_the_wall
    hit_the_wall = (pose_message.x < 2) or (pose_message.x >9) or (pose_message.y<2) or (pose_message.y >9)


rospy.init_node('clientchangepen_py_n')
rospy.wait_for_service('turtle1/set_pen')
vel_pub_py = rospy.Publisher("turtle1/cmd_vel", Twist, queue_size=10)
pose_sub_py = rospy.Subscriber("turtle1/pose", Pose, callback, queue_size=10)
changepen_handle_py = rospy.ServiceProxy('turtle1/set_pen', SetPen)

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

    if(hit_the_wall_prev == 0 and hit_the_wall ==1):
        changepen_handle_py(0,0,0,5,False)
    elif(hit_the_wall_prev == 1 and hit_the_wall ==0):
        changepen_handle_py(255,255,255,5,False)
    hit_the_wall_prev = hit_the_wall
    vel_pub_py.publish(velocity_v)
    loop_rate.sleep()
