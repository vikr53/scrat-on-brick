;; Auto-generated. Do not edit!


(when (boundp 'lyap_control::plant_msg)
  (if (not (find-package "LYAP_CONTROL"))
    (make-package "LYAP_CONTROL"))
  (shadow 'plant_msg (find-package "LYAP_CONTROL")))
(unless (find-package "LYAP_CONTROL::PLANT_MSG")
  (make-package "LYAP_CONTROL::PLANT_MSG"))

(in-package "ROS")
;;//! \htmlinclude plant_msg.msg.html


(defclass lyap_control::plant_msg
  :super ros::object
  :slots (_x _t _setpoint ))

(defmethod lyap_control::plant_msg
  (:init
   (&key
    ((:x __x) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:t __t) 0.0)
    ((:setpoint __setpoint) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   (setq _t (float __t))
   (setq _setpoint __setpoint)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:t
   (&optional __t)
   (if __t (setq _t __t)) _t)
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:serialization-length
   ()
   (+
    ;; float64[3] _x
    (* 8    3)
    ;; float64 _t
    8
    ;; float64[3] _setpoint
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _x
     (dotimes (i 3)
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _t
       (sys::poke _t (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[3] _setpoint
     (dotimes (i 3)
       (sys::poke (elt _setpoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _x
   (dotimes (i (length _x))
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _t
     (setq _t (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[3] _setpoint
   (dotimes (i (length _setpoint))
     (setf (elt _setpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get lyap_control::plant_msg :md5sum-) "b0f1b97d00071f8e5c4d2c83353c47d2")
(setf (get lyap_control::plant_msg :datatype-) "lyap_control/plant_msg")
(setf (get lyap_control::plant_msg :definition-)
      "float64[3] x
float64 t
float64[3] setpoint

")



(provide :lyap_control/plant_msg "b0f1b97d00071f8e5c4d2c83353c47d2")


