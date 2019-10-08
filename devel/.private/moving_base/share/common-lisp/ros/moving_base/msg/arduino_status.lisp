; Auto-generated. Do not edit!


(cl:in-package moving_base-msg)


;//! \htmlinclude arduino_status.msg.html

(cl:defclass <arduino_status> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (steer_angle
    :reader steer_angle
    :initarg :steer_angle
    :type cl:float
    :initform 0.0)
   (drive_speed
    :reader drive_speed
    :initarg :drive_speed
    :type cl:float
    :initform 0.0)
   (steer_motor
    :reader steer_motor
    :initarg :steer_motor
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (drive_motor
    :reader drive_motor
    :initarg :drive_motor
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (no_rotate
    :reader no_rotate
    :initarg :no_rotate
    :type cl:boolean
    :initform cl:nil)
   (CCW
    :reader CCW
    :initarg :CCW
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass arduino_status (<arduino_status>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <arduino_status>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'arduino_status)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name moving_base-msg:<arduino_status> is deprecated: use moving_base-msg:arduino_status instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:header-val is deprecated.  Use moving_base-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steer_angle-val :lambda-list '(m))
(cl:defmethod steer_angle-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:steer_angle-val is deprecated.  Use moving_base-msg:steer_angle instead.")
  (steer_angle m))

(cl:ensure-generic-function 'drive_speed-val :lambda-list '(m))
(cl:defmethod drive_speed-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:drive_speed-val is deprecated.  Use moving_base-msg:drive_speed instead.")
  (drive_speed m))

(cl:ensure-generic-function 'steer_motor-val :lambda-list '(m))
(cl:defmethod steer_motor-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:steer_motor-val is deprecated.  Use moving_base-msg:steer_motor instead.")
  (steer_motor m))

(cl:ensure-generic-function 'drive_motor-val :lambda-list '(m))
(cl:defmethod drive_motor-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:drive_motor-val is deprecated.  Use moving_base-msg:drive_motor instead.")
  (drive_motor m))

(cl:ensure-generic-function 'no_rotate-val :lambda-list '(m))
(cl:defmethod no_rotate-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:no_rotate-val is deprecated.  Use moving_base-msg:no_rotate instead.")
  (no_rotate m))

(cl:ensure-generic-function 'CCW-val :lambda-list '(m))
(cl:defmethod CCW-val ((m <arduino_status>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader moving_base-msg:CCW-val is deprecated.  Use moving_base-msg:CCW instead.")
  (CCW m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <arduino_status>) ostream)
  "Serializes a message object of type '<arduino_status>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'steer_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'drive_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'steer_motor))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'drive_motor))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'no_rotate) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'CCW) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <arduino_status>) istream)
  "Deserializes a message object of type '<arduino_status>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steer_angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'drive_speed) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'steer_motor) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'steer_motor)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'drive_motor) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'drive_motor)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:slot-value msg 'no_rotate) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'CCW) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<arduino_status>)))
  "Returns string type for a message object of type '<arduino_status>"
  "moving_base/arduino_status")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'arduino_status)))
  "Returns string type for a message object of type 'arduino_status"
  "moving_base/arduino_status")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<arduino_status>)))
  "Returns md5sum for a message object of type '<arduino_status>"
  "3692242dbf898dca171f405d2ccd3d4b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'arduino_status)))
  "Returns md5sum for a message object of type 'arduino_status"
  "3692242dbf898dca171f405d2ccd3d4b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<arduino_status>)))
  "Returns full string definition for message of type '<arduino_status>"
  (cl:format cl:nil "Header header~%~%float32 steer_angle~%~%float32 drive_speed~%~%float32[4] steer_motor~%~%float32[4] drive_motor~%~%bool no_rotate~%~%bool CCW~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'arduino_status)))
  "Returns full string definition for message of type 'arduino_status"
  (cl:format cl:nil "Header header~%~%float32 steer_angle~%~%float32 drive_speed~%~%float32[4] steer_motor~%~%float32[4] drive_motor~%~%bool no_rotate~%~%bool CCW~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <arduino_status>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'steer_motor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'drive_motor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <arduino_status>))
  "Converts a ROS message object to a list"
  (cl:list 'arduino_status
    (cl:cons ':header (header msg))
    (cl:cons ':steer_angle (steer_angle msg))
    (cl:cons ':drive_speed (drive_speed msg))
    (cl:cons ':steer_motor (steer_motor msg))
    (cl:cons ':drive_motor (drive_motor msg))
    (cl:cons ':no_rotate (no_rotate msg))
    (cl:cons ':CCW (CCW msg))
))
