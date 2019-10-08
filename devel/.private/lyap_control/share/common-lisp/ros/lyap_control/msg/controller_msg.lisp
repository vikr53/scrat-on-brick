; Auto-generated. Do not edit!


(cl:in-package lyap_control-msg)


;//! \htmlinclude controller_msg.msg.html

(cl:defclass <controller_msg> (roslisp-msg-protocol:ros-message)
  ((u
    :reader u
    :initarg :u
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass controller_msg (<controller_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <controller_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'controller_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lyap_control-msg:<controller_msg> is deprecated: use lyap_control-msg:controller_msg instead.")))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <controller_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lyap_control-msg:u-val is deprecated.  Use lyap_control-msg:u instead.")
  (u m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <controller_msg>) ostream)
  "Serializes a message object of type '<controller_msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'u))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <controller_msg>) istream)
  "Deserializes a message object of type '<controller_msg>"
  (cl:setf (cl:slot-value msg 'u) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'u)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<controller_msg>)))
  "Returns string type for a message object of type '<controller_msg>"
  "lyap_control/controller_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'controller_msg)))
  "Returns string type for a message object of type 'controller_msg"
  "lyap_control/controller_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<controller_msg>)))
  "Returns md5sum for a message object of type '<controller_msg>"
  "5b5645f375d1be153a2332d0066f1b46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'controller_msg)))
  "Returns md5sum for a message object of type 'controller_msg"
  "5b5645f375d1be153a2332d0066f1b46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<controller_msg>)))
  "Returns full string definition for message of type '<controller_msg>"
  (cl:format cl:nil "float64[3] u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'controller_msg)))
  "Returns full string definition for message of type 'controller_msg"
  (cl:format cl:nil "float64[3] u~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <controller_msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'u) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <controller_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'controller_msg
    (cl:cons ':u (u msg))
))
