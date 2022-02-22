; Auto-generated. Do not edit!


(cl:in-package msgsrv_basics_p-srv)


;//! \htmlinclude WarningSwitch-request.msg.html

(cl:defclass <WarningSwitch-request> (roslisp-msg-protocol:ros-message)
  ((req_msg
    :reader req_msg
    :initarg :req_msg
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WarningSwitch-request (<WarningSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgsrv_basics_p-srv:<WarningSwitch-request> is deprecated: use msgsrv_basics_p-srv:WarningSwitch-request instead.")))

(cl:ensure-generic-function 'req_msg-val :lambda-list '(m))
(cl:defmethod req_msg-val ((m <WarningSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgsrv_basics_p-srv:req_msg-val is deprecated.  Use msgsrv_basics_p-srv:req_msg instead.")
  (req_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningSwitch-request>) ostream)
  "Serializes a message object of type '<WarningSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'req_msg) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningSwitch-request>) istream)
  "Deserializes a message object of type '<WarningSwitch-request>"
    (cl:setf (cl:slot-value msg 'req_msg) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningSwitch-request>)))
  "Returns string type for a service object of type '<WarningSwitch-request>"
  "msgsrv_basics_p/WarningSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningSwitch-request)))
  "Returns string type for a service object of type 'WarningSwitch-request"
  "msgsrv_basics_p/WarningSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningSwitch-request>)))
  "Returns md5sum for a message object of type '<WarningSwitch-request>"
  "6cf6f195cf922f022d7cdea6a7f7d821")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningSwitch-request)))
  "Returns md5sum for a message object of type 'WarningSwitch-request"
  "6cf6f195cf922f022d7cdea6a7f7d821")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningSwitch-request>)))
  "Returns full string definition for message of type '<WarningSwitch-request>"
  (cl:format cl:nil "bool req_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningSwitch-request)))
  "Returns full string definition for message of type 'WarningSwitch-request"
  (cl:format cl:nil "bool req_msg~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningSwitch-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningSwitch-request
    (cl:cons ':req_msg (req_msg msg))
))
;//! \htmlinclude WarningSwitch-response.msg.html

(cl:defclass <WarningSwitch-response> (roslisp-msg-protocol:ros-message)
  ((res_msg
    :reader res_msg
    :initarg :res_msg
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass WarningSwitch-response (<WarningSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WarningSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WarningSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name msgsrv_basics_p-srv:<WarningSwitch-response> is deprecated: use msgsrv_basics_p-srv:WarningSwitch-response instead.")))

(cl:ensure-generic-function 'res_msg-val :lambda-list '(m))
(cl:defmethod res_msg-val ((m <WarningSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader msgsrv_basics_p-srv:res_msg-val is deprecated.  Use msgsrv_basics_p-srv:res_msg instead.")
  (res_msg m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WarningSwitch-response>) ostream)
  "Serializes a message object of type '<WarningSwitch-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'res_msg) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WarningSwitch-response>) istream)
  "Deserializes a message object of type '<WarningSwitch-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'res_msg) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WarningSwitch-response>)))
  "Returns string type for a service object of type '<WarningSwitch-response>"
  "msgsrv_basics_p/WarningSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningSwitch-response)))
  "Returns string type for a service object of type 'WarningSwitch-response"
  "msgsrv_basics_p/WarningSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WarningSwitch-response>)))
  "Returns md5sum for a message object of type '<WarningSwitch-response>"
  "6cf6f195cf922f022d7cdea6a7f7d821")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WarningSwitch-response)))
  "Returns md5sum for a message object of type 'WarningSwitch-response"
  "6cf6f195cf922f022d7cdea6a7f7d821")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WarningSwitch-response>)))
  "Returns full string definition for message of type '<WarningSwitch-response>"
  (cl:format cl:nil "std_msgs/String res_msg~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WarningSwitch-response)))
  "Returns full string definition for message of type 'WarningSwitch-response"
  (cl:format cl:nil "std_msgs/String res_msg~%~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WarningSwitch-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'res_msg))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WarningSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WarningSwitch-response
    (cl:cons ':res_msg (res_msg msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WarningSwitch)))
  'WarningSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WarningSwitch)))
  'WarningSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WarningSwitch)))
  "Returns string type for a service object of type '<WarningSwitch>"
  "msgsrv_basics_p/WarningSwitch")