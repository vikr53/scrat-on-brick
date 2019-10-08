;; Auto-generated. Do not edit!


(when (boundp 'fbl_control::plant_msg)
  (if (not (find-package "FBL_CONTROL"))
    (make-package "FBL_CONTROL"))
  (shadow 'plant_msg (find-package "FBL_CONTROL")))
(unless (find-package "FBL_CONTROL::PLANT_MSG")
  (make-package "FBL_CONTROL::PLANT_MSG"))

(in-package "ROS")
;;//! \htmlinclude plant_msg.msg.html


(defclass fbl_control::plant_msg
  :super ros::object
  :slots (_x _t _setpoint ))

(defmethod fbl_control::plant_msg
  (:init
   (&key
    ((:x __x) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:t __t) 0.0)
    ((:setpoint __setpoint) (make-array 6 :initial-element 0.0 :element-type :float))
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
    ;; float64[6] _setpoint
    (* 8    6)
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
     ;; float64[6] _setpoint
     (dotimes (i 6)
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
   ;; float64[6] _setpoint
   (dotimes (i (length _setpoint))
     (setf (elt _setpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get fbl_control::plant_msg :md5sum-) "3de265b684b485470b0c5d518a3b6ba7")
(setf (get fbl_control::plant_msg :datatype-) "fbl_control/plant_msg")
(setf (get fbl_control::plant_msg :definition-)
      "float64[3] x
float64 t
float64[6] setpoint

")



(provide :fbl_control/plant_msg "3de265b684b485470b0c5d518a3b6ba7")


