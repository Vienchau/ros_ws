;; Auto-generated. Do not edit!


(when (boundp 'msgsrv_basics_p::WarningSwitch)
  (if (not (find-package "MSGSRV_BASICS_P"))
    (make-package "MSGSRV_BASICS_P"))
  (shadow 'WarningSwitch (find-package "MSGSRV_BASICS_P")))
(unless (find-package "MSGSRV_BASICS_P::WARNINGSWITCH")
  (make-package "MSGSRV_BASICS_P::WARNINGSWITCH"))
(unless (find-package "MSGSRV_BASICS_P::WARNINGSWITCHREQUEST")
  (make-package "MSGSRV_BASICS_P::WARNINGSWITCHREQUEST"))
(unless (find-package "MSGSRV_BASICS_P::WARNINGSWITCHRESPONSE")
  (make-package "MSGSRV_BASICS_P::WARNINGSWITCHRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass msgsrv_basics_p::WarningSwitchRequest
  :super ros::object
  :slots (_req_msg ))

(defmethod msgsrv_basics_p::WarningSwitchRequest
  (:init
   (&key
    ((:req_msg __req_msg) nil)
    )
   (send-super :init)
   (setq _req_msg __req_msg)
   self)
  (:req_msg
   (&optional (__req_msg :null))
   (if (not (eq __req_msg :null)) (setq _req_msg __req_msg)) _req_msg)
  (:serialization-length
   ()
   (+
    ;; bool _req_msg
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _req_msg
       (if _req_msg (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _req_msg
     (setq _req_msg (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass msgsrv_basics_p::WarningSwitchResponse
  :super ros::object
  :slots (_res_msg ))

(defmethod msgsrv_basics_p::WarningSwitchResponse
  (:init
   (&key
    ((:res_msg __res_msg) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _res_msg __res_msg)
   self)
  (:res_msg
   (&rest __res_msg)
   (if (keywordp (car __res_msg))
       (send* _res_msg __res_msg)
     (progn
       (if __res_msg (setq _res_msg (car __res_msg)))
       _res_msg)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _res_msg
    (send _res_msg :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _res_msg
       (send _res_msg :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _res_msg
     (send _res_msg :deserialize buf ptr-) (incf ptr- (send _res_msg :serialization-length))
   ;;
   self)
  )

(defclass msgsrv_basics_p::WarningSwitch
  :super ros::object
  :slots ())

(setf (get msgsrv_basics_p::WarningSwitch :md5sum-) "6cf6f195cf922f022d7cdea6a7f7d821")
(setf (get msgsrv_basics_p::WarningSwitch :datatype-) "msgsrv_basics_p/WarningSwitch")
(setf (get msgsrv_basics_p::WarningSwitch :request) msgsrv_basics_p::WarningSwitchRequest)
(setf (get msgsrv_basics_p::WarningSwitch :response) msgsrv_basics_p::WarningSwitchResponse)

(defmethod msgsrv_basics_p::WarningSwitchRequest
  (:response () (instance msgsrv_basics_p::WarningSwitchResponse :init)))

(setf (get msgsrv_basics_p::WarningSwitchRequest :md5sum-) "6cf6f195cf922f022d7cdea6a7f7d821")
(setf (get msgsrv_basics_p::WarningSwitchRequest :datatype-) "msgsrv_basics_p/WarningSwitchRequest")
(setf (get msgsrv_basics_p::WarningSwitchRequest :definition-)
      "bool req_msg
---
std_msgs/String res_msg


================================================================================
MSG: std_msgs/String
string data
")

(setf (get msgsrv_basics_p::WarningSwitchResponse :md5sum-) "6cf6f195cf922f022d7cdea6a7f7d821")
(setf (get msgsrv_basics_p::WarningSwitchResponse :datatype-) "msgsrv_basics_p/WarningSwitchResponse")
(setf (get msgsrv_basics_p::WarningSwitchResponse :definition-)
      "bool req_msg
---
std_msgs/String res_msg


================================================================================
MSG: std_msgs/String
string data
")



(provide :msgsrv_basics_p/WarningSwitch "6cf6f195cf922f022d7cdea6a7f7d821")


