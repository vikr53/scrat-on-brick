; Auto-generated. Do not edit!


(cl:in-package fbl_control-msg)


;//! \htmlinclude plant_msg.msg.html

(cl:defclass <plant_msg> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (t
    :reader t
    :initarg :t
    :type cl:float
    :initform 0.0)
   (setpoint
    :reader setpoint
    :initarg :setpoint
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass plant_msg (<plant_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <plant_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'plant_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name fbl_control-msg:<plant_msg> is deprecated: use fbl_control-msg:plant_msg instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <plant_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fbl_control-msg:x-val is deprecated.  Use fbl_control-msg:x instead.")
  (x m))

(cl:ensure-generic-function 't-val :lambda-list '(m))
(cl:defmethod t-val ((m <plant_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fbl_control-msg:t-val is deprecated.  Use fbl_control-msg:t instead.")
  (t m))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <plant_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader fbl_control-msg:setpoint-val is deprecated.  Use fbl_control-msg:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <plant_msg>) ostream)
  "Serializes a message object of type '<plant_msg>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'x))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 't))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'setpoint))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <plant_msg>) istream)
  "Deserializes a message object of type '<plant_msg>"
  (cl:setf (cl:slot-value msg 'x) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'x)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 't) (roslisp-utils:decode-double-float-bits bits)))
  (cl:setf (cl:slot-value msg 'setpoint) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'setpoint)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<plant_msg>)))
  "Returns string type for a message object of type '<plant_msg>"
  "fbl_control/plant_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'plant_msg)))
  "Returns string type for a message object of type 'plant_msg"
  "fbl_control/plant_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<plant_msg>)))
  "Returns md5sum for a message object of type '<plant_msg>"
  "3de265b684b485470b0c5d518a3b6ba7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'plant_msg)))
  "Returns md5sum for a message object of type 'plant_msg"
  "3de265b684b485470b0c5d518a3b6ba7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<plant_msg>)))
  "Returns full string definition for message of type '<plant_msg>"
  (cl:format cl:nil "float64[3] x~%float64 t~%float64[6] setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'plant_msg)))
  "Returns full string definition for message of type 'plant_msg"
  (cl:format cl:nil "float64[3] x~%float64 t~%float64[6] setpoint~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <plant_msg>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'setpoint) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <plant_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'plant_msg
    (cl:cons ':x (x msg))
    (cl:cons ':t (t msg))
    (cl:cons ':setpoint (setpoint msg))
))
