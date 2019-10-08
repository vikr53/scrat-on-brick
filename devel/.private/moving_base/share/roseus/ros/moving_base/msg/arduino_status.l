;; Auto-generated. Do not edit!


(when (boundp 'moving_base::arduino_status)
  (if (not (find-package "MOVING_BASE"))
    (make-package "MOVING_BASE"))
  (shadow 'arduino_status (find-package "MOVING_BASE")))
(unless (find-package "MOVING_BASE::ARDUINO_STATUS")
  (make-package "MOVING_BASE::ARDUINO_STATUS"))

(in-package "ROS")
;;//! \htmlinclude arduino_status.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass moving_base::arduino_status
  :super ros::object
  :slots (_header _steer_angle _drive_speed _steer_motor _drive_motor _no_rotate _CCW ))

(defmethod moving_base::arduino_status
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steer_angle __steer_angle) 0.0)
    ((:drive_speed __drive_speed) 0.0)
    ((:steer_motor __steer_motor) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:drive_motor __drive_motor) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:no_rotate __no_rotate) nil)
    ((:CCW __CCW) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steer_angle (float __steer_angle))
   (setq _drive_speed (float __drive_speed))
   (setq _steer_motor __steer_motor)
   (setq _drive_motor __drive_motor)
   (setq _no_rotate __no_rotate)
   (setq _CCW __CCW)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steer_angle
   (&optional __steer_angle)
   (if __steer_angle (setq _steer_angle __steer_angle)) _steer_angle)
  (:drive_speed
   (&optional __drive_speed)
   (if __drive_speed (setq _drive_speed __drive_speed)) _drive_speed)
  (:steer_motor
   (&optional __steer_motor)
   (if __steer_motor (setq _steer_motor __steer_motor)) _steer_motor)
  (:drive_motor
   (&optional __drive_motor)
   (if __drive_motor (setq _drive_motor __drive_motor)) _drive_motor)
  (:no_rotate
   (&optional __no_rotate)
   (if __no_rotate (setq _no_rotate __no_rotate)) _no_rotate)
  (:CCW
   (&optional __CCW)
   (if __CCW (setq _CCW __CCW)) _CCW)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steer_angle
    4
    ;; float32 _drive_speed
    4
    ;; float32[4] _steer_motor
    (* 4    4)
    ;; float32[4] _drive_motor
    (* 4    4)
    ;; bool _no_rotate
    1
    ;; bool _CCW
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steer_angle
       (sys::poke _steer_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _drive_speed
       (sys::poke _drive_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[4] _steer_motor
     (dotimes (i 4)
       (sys::poke (elt _steer_motor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[4] _drive_motor
     (dotimes (i 4)
       (sys::poke (elt _drive_motor i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _no_rotate
       (if _no_rotate (write-byte -1 s) (write-byte 0 s))
     ;; bool _CCW
       (if _CCW (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steer_angle
     (setq _steer_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _drive_speed
     (setq _drive_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[4] _steer_motor
   (dotimes (i (length _steer_motor))
     (setf (elt _steer_motor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[4] _drive_motor
   (dotimes (i (length _drive_motor))
     (setf (elt _drive_motor i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _no_rotate
     (setq _no_rotate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _CCW
     (setq _CCW (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get moving_base::arduino_status :md5sum-) "3692242dbf898dca171f405d2ccd3d4b")
(setf (get moving_base::arduino_status :datatype-) "moving_base/arduino_status")
(setf (get moving_base::arduino_status :definition-)
      "Header header

float32 steer_angle

float32 drive_speed

float32[4] steer_motor

float32[4] drive_motor

bool no_rotate

bool CCW
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :moving_base/arduino_status "3692242dbf898dca171f405d2ccd3d4b")


