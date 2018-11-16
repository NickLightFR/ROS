; Auto-generated. Do not edit!


(cl:in-package scara_cpe_kinematics-srv)


;//! \htmlinclude gotoxy-request.msg.html

(cl:defclass <gotoxy-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
)

(cl:defclass gotoxy-request (<gotoxy-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gotoxy-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gotoxy-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_cpe_kinematics-srv:<gotoxy-request> is deprecated: use scara_cpe_kinematics-srv:gotoxy-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <gotoxy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_cpe_kinematics-srv:x-val is deprecated.  Use scara_cpe_kinematics-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <gotoxy-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_cpe_kinematics-srv:y-val is deprecated.  Use scara_cpe_kinematics-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gotoxy-request>) ostream)
  "Serializes a message object of type '<gotoxy-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gotoxy-request>) istream)
  "Deserializes a message object of type '<gotoxy-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gotoxy-request>)))
  "Returns string type for a service object of type '<gotoxy-request>"
  "scara_cpe_kinematics/gotoxyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gotoxy-request)))
  "Returns string type for a service object of type 'gotoxy-request"
  "scara_cpe_kinematics/gotoxyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gotoxy-request>)))
  "Returns md5sum for a message object of type '<gotoxy-request>"
  "d3402b21681d237b9cc577a12ce72624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gotoxy-request)))
  "Returns md5sum for a message object of type 'gotoxy-request"
  "d3402b21681d237b9cc577a12ce72624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gotoxy-request>)))
  "Returns full string definition for message of type '<gotoxy-request>"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gotoxy-request)))
  "Returns full string definition for message of type 'gotoxy-request"
  (cl:format cl:nil "float32 x~%float32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gotoxy-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gotoxy-request>))
  "Converts a ROS message object to a list"
  (cl:list 'gotoxy-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude gotoxy-response.msg.html

(cl:defclass <gotoxy-response> (roslisp-msg-protocol:ros-message)
  ((r
    :reader r
    :initarg :r
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass gotoxy-response (<gotoxy-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gotoxy-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gotoxy-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name scara_cpe_kinematics-srv:<gotoxy-response> is deprecated: use scara_cpe_kinematics-srv:gotoxy-response instead.")))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <gotoxy-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader scara_cpe_kinematics-srv:r-val is deprecated.  Use scara_cpe_kinematics-srv:r instead.")
  (r m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gotoxy-response>) ostream)
  "Serializes a message object of type '<gotoxy-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'r) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gotoxy-response>) istream)
  "Deserializes a message object of type '<gotoxy-response>"
    (cl:setf (cl:slot-value msg 'r) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gotoxy-response>)))
  "Returns string type for a service object of type '<gotoxy-response>"
  "scara_cpe_kinematics/gotoxyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gotoxy-response)))
  "Returns string type for a service object of type 'gotoxy-response"
  "scara_cpe_kinematics/gotoxyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gotoxy-response>)))
  "Returns md5sum for a message object of type '<gotoxy-response>"
  "d3402b21681d237b9cc577a12ce72624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gotoxy-response)))
  "Returns md5sum for a message object of type 'gotoxy-response"
  "d3402b21681d237b9cc577a12ce72624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gotoxy-response>)))
  "Returns full string definition for message of type '<gotoxy-response>"
  (cl:format cl:nil "bool r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gotoxy-response)))
  "Returns full string definition for message of type 'gotoxy-response"
  (cl:format cl:nil "bool r~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gotoxy-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gotoxy-response>))
  "Converts a ROS message object to a list"
  (cl:list 'gotoxy-response
    (cl:cons ':r (r msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'gotoxy)))
  'gotoxy-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'gotoxy)))
  'gotoxy-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gotoxy)))
  "Returns string type for a service object of type '<gotoxy>"
  "scara_cpe_kinematics/gotoxy")