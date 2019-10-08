; Auto-generated. Do not edit!


(cl:in-package fbl_control-msg)


;//! \htmlinclude setpt_msg.msg.html

(cl:defclass <setpt_msg> (roslisp-msg-protocol:ros-message)
  ((setx
    :reader setx
    :initarg :setx
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass setpt_msg (<setpt_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setpt_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setpt_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fbl_control-msg:<setpt_msg> is deprecated: use fbl_control-msg:setpt_msg instead.")))

(cl:ensure-generic-function 'setx-val :lambda-list '(m))
(cl:defmethod setx-val ((m <setpt_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fbl_control-msg:setx-val is deprecated.  Use fbl_control-msg:setx instead.")
  (setx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setpt_msg>) ostream)
  "Serializes a message object of type '<setpt_msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'setx))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setpt_msg>) istream)
  "Deserializes a message object of type '<setpt_msg>"
  (cl:setf (cl:slot-value msg 'setx) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'setx)))
    (cl:dotimes (i 6)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setpt_msg>)))
  "Returns string type for a message object of type '<setpt_msg>"
  "fbl_control/setpt_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setpt_msg)))
  "Returns string type for a message object of type 'setpt_msg"
  "fbl_control/setpt_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setpt_msg>)))
  "Returns md5sum for a message object of type '<setpt_msg>"
  "cdeb67591fcccb6b7952b3b145d3c23b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setpt_msg)))
  "Returns md5sum for a message object of type 'setpt_msg"
  "cdeb67591fcccb6b7952b3b145d3c23b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setpt_msg>)))
  "Returns full string definition for message of type '<setpt_msg>"
  (cl:format cl:nil "float64[6] setx~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setpt_msg)))
  "Returns full string definition for message of type 'setpt_msg"
  (cl:format cl:nil "float64[6] setx~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setpt_msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'setx) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setpt_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'setpt_msg
    (cl:cons ':setx (setx msg))
))
