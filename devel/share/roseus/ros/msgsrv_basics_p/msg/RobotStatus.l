;; Auto-generated. Do not edit!


(when (boundp 'msgsrv_basics_p::RobotStatus)
  (if (not (find-package "MSGSRV_BASICS_P"))
    (make-package "MSGSRV_BASICS_P"))
  (shadow 'RobotStatus (find-package "MSGSRV_BASICS_P")))
(unless (find-package "MSGSRV_BASICS_P::ROBOTSTATUS")
  (make-package "MSGSRV_BASICS_P::ROBOTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RobotStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass msgsrv_basics_p::RobotStatus
  :super ros::object
  :slots (_motor1_rpm _motor2_rpm _motor3_rpm _motor4_rpm _locn ))

(defmethod msgsrv_basics_p::RobotStatus
  (:init
   (&key
    ((:motor1_rpm __motor1_rpm) 0)
    ((:motor2_rpm __motor2_rpm) 0)
    ((:motor3_rpm __motor3_rpm) 0)
    ((:motor4_rpm __motor4_rpm) 0)
    ((:locn __locn) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _motor1_rpm (round __motor1_rpm))
   (setq _motor2_rpm (round __motor2_rpm))
   (setq _motor3_rpm (round __motor3_rpm))
   (setq _motor4_rpm (round __motor4_rpm))
   (setq _locn __locn)
   self)
  (:motor1_rpm
   (&optional __motor1_rpm)
   (if __motor1_rpm (setq _motor1_rpm __motor1_rpm)) _motor1_rpm)
  (:motor2_rpm
   (&optional __motor2_rpm)
   (if __motor2_rpm (setq _motor2_rpm __motor2_rpm)) _motor2_rpm)
  (:motor3_rpm
   (&optional __motor3_rpm)
   (if __motor3_rpm (setq _motor3_rpm __motor3_rpm)) _motor3_rpm)
  (:motor4_rpm
   (&optional __motor4_rpm)
   (if __motor4_rpm (setq _motor4_rpm __motor4_rpm)) _motor4_rpm)
  (:locn
   (&rest __locn)
   (if (keywordp (car __locn))
       (send* _locn __locn)
     (progn
       (if __locn (setq _locn (car __locn)))
       _locn)))
  (:serialization-length
   ()
   (+
    ;; int16 _motor1_rpm
    2
    ;; int16 _motor2_rpm
    2
    ;; int16 _motor3_rpm
    2
    ;; int16 _motor4_rpm
    2
    ;; geometry_msgs/Vector3 _locn
    (send _locn :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _motor1_rpm
       (write-word _motor1_rpm s)
     ;; int16 _motor2_rpm
       (write-word _motor2_rpm s)
     ;; int16 _motor3_rpm
       (write-word _motor3_rpm s)
     ;; int16 _motor4_rpm
       (write-word _motor4_rpm s)
     ;; geometry_msgs/Vector3 _locn
       (send _locn :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _motor1_rpm
     (setq _motor1_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motor2_rpm
     (setq _motor2_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motor3_rpm
     (setq _motor3_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _motor4_rpm
     (setq _motor4_rpm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; geometry_msgs/Vector3 _locn
     (send _locn :deserialize buf ptr-) (incf ptr- (send _locn :serialization-length))
   ;;
   self)
  )

(setf (get msgsrv_basics_p::RobotStatus :md5sum-) "22150532422434a03f7a1cd36a74be74")
(setf (get msgsrv_basics_p::RobotStatus :datatype-) "msgsrv_basics_p/RobotStatus")
(setf (get msgsrv_basics_p::RobotStatus :definition-)
      "int16 motor1_rpm
int16 motor2_rpm
int16 motor3_rpm
int16 motor4_rpm
geometry_msgs/Vector3 locn


================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :msgsrv_basics_p/RobotStatus "22150532422434a03f7a1cd36a74be74")


