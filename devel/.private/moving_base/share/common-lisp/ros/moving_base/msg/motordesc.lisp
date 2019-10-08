; Auto-generated. Do not edit!


(cl:in-package moving_base-msg)


;//! \htmlinclude motordesc.msg.html

(cl:defclass <motordesc> (roslisp-msg-protocol:ros-message)
  ((theta0
    :reader theta0
    :initarg :theta0
    :type cl:float
    :initform 0.0)
   (theta1
    :reader theta1
    :initarg :theta1
    :type cl:float
    :initform 0.0)
   (theta2
    :reader theta2
    :initarg :theta2
    :type cl:float
    :initform 0.0)
   (theta3
    :reader theta3
    :initarg :theta3
    :type cl:float
    :initform 0.0)
   (omega0
    :reader omega0
    :initarg :omega0
    :type cl:float
    :initform 0.0)
   (omega1
    :reader omega1
    :initarg :omega1
    :type cl:float
    :initform 0.0)
   (omega2
    :reader omega2
    :initarg :omega2
    :type cl:float
    :initform 0.0)
   (omega3
    :reader omega3
    :initarg :omega3
    :type cl:float
    :initform 0.0))
)

(cl:defclass motordesc (<motordesc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motordesc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motordesc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_base-msg:<motordesc> is deprecated: use moving_base-msg:motordesc instead.")))

(cl:ensure-generic-function 'theta0-val :lambda-list '(m))
(cl:defmethod theta0-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:theta0-val is deprecated.  Use moving_base-msg:theta0 instead.")
  (theta0 m))

(cl:ensure-generic-function 'theta1-val :lambda-list '(m))
(cl:defmethod theta1-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:theta1-val is deprecated.  Use moving_base-msg:theta1 instead.")
  (theta1 m))

(cl:ensure-generic-function 'theta2-val :lambda-list '(m))
(cl:defmethod theta2-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:theta2-val is deprecated.  Use moving_base-msg:theta2 instead.")
  (theta2 m))

(cl:ensure-generic-function 'theta3-val :lambda-list '(m))
(cl:defmethod theta3-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:theta3-val is deprecated.  Use moving_base-msg:theta3 instead.")
  (theta3 m))

(cl:ensure-generic-function 'omega0-val :lambda-list '(m))
(cl:defmethod omega0-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:omega0-val is deprecated.  Use moving_base-msg:omega0 instead.")
  (omega0 m))

(cl:ensure-generic-function 'omega1-val :lambda-list '(m))
(cl:defmethod omega1-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:omega1-val is deprecated.  Use moving_base-msg:omega1 instead.")
  (omega1 m))

(cl:ensure-generic-function 'omega2-val :lambda-list '(m))
(cl:defmethod omega2-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:omega2-val is deprecated.  Use moving_base-msg:omega2 instead.")
  (omega2 m))

(cl:ensure-generic-function 'omega3-val :lambda-list '(m))
(cl:defmethod omega3-val ((m <motordesc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:omega3-val is deprecated.  Use moving_base-msg:omega3 instead.")
  (omega3 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motordesc>) ostream)
  "Serializes a message object of type '<motordesc>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'theta3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'omega3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motordesc>) istream)
  "Deserializes a message object of type '<motordesc>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'theta3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega0) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'omega3) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motordesc>)))
  "Returns string type for a message object of type '<motordesc>"
  "moving_base/motordesc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motordesc)))
  "Returns string type for a message object of type 'motordesc"
  "moving_base/motordesc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motordesc>)))
  "Returns md5sum for a message object of type '<motordesc>"
  "da0dbaec18ab73e2b9363331f9a40286")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motordesc)))
  "Returns md5sum for a message object of type 'motordesc"
  "da0dbaec18ab73e2b9363331f9a40286")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motordesc>)))
  "Returns full string definition for message of type '<motordesc>"
  (cl:format cl:nil "float32 theta0~%float32 theta1~%float32 theta2~%float32 theta3~%float32 omega0~%float32 omega1~%float32 omega2~%float32 omega3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motordesc)))
  "Returns full string definition for message of type 'motordesc"
  (cl:format cl:nil "float32 theta0~%float32 theta1~%float32 theta2~%float32 theta3~%float32 omega0~%float32 omega1~%float32 omega2~%float32 omega3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motordesc>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motordesc>))
  "Converts a ROS message object to a list"
  (cl:list 'motordesc
    (cl:cons ':theta0 (theta0 msg))
    (cl:cons ':theta1 (theta1 msg))
    (cl:cons ':theta2 (theta2 msg))
    (cl:cons ':theta3 (theta3 msg))
    (cl:cons ':omega0 (omega0 msg))
    (cl:cons ':omega1 (omega1 msg))
    (cl:cons ':omega2 (omega2 msg))
    (cl:cons ':omega3 (omega3 msg))
))
