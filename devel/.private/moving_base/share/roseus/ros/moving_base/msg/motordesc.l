;; Auto-generated. Do not edit!


(when (boundp 'moving_base::motordesc)
  (if (not (find-package "MOVING_BASE"))
    (make-package "MOVING_BASE"))
  (shadow 'motordesc (find-package "MOVING_BASE")))
(unless (find-package "MOVING_BASE::MOTORDESC")
  (make-package "MOVING_BASE::MOTORDESC"))

(in-package "ROS")
;;//! \htmlinclude motordesc.msg.html


(defclass moving_base::motordesc
  :super ros::object
  :slots (_theta0 _theta1 _theta2 _theta3 _omega0 _omega1 _omega2 _omega3 ))

(defmethod moving_base::motordesc
  (:init
   (&key
    ((:theta0 __theta0) 0.0)
    ((:theta1 __theta1) 0.0)
    ((:theta2 __theta2) 0.0)
    ((:theta3 __theta3) 0.0)
    ((:omega0 __omega0) 0.0)
    ((:omega1 __omega1) 0.0)
    ((:omega2 __omega2) 0.0)
    ((:omega3 __omega3) 0.0)
    )
   (send-super :init)
   (setq _theta0 (float __theta0))
   (setq _theta1 (float __theta1))
   (setq _theta2 (float __theta2))
   (setq _theta3 (float __theta3))
   (setq _omega0 (float __omega0))
   (setq _omega1 (float __omega1))
   (setq _omega2 (float __omega2))
   (setq _omega3 (float __omega3))
   self)
  (:theta0
   (&optional __theta0)
   (if __theta0 (setq _theta0 __theta0)) _theta0)
  (:theta1
   (&optional __theta1)
   (if __theta1 (setq _theta1 __theta1)) _theta1)
  (:theta2
   (&optional __theta2)
   (if __theta2 (setq _theta2 __theta2)) _theta2)
  (:theta3
   (&optional __theta3)
   (if __theta3 (setq _theta3 __theta3)) _theta3)
  (:omega0
   (&optional __omega0)
   (if __omega0 (setq _omega0 __omega0)) _omega0)
  (:omega1
   (&optional __omega1)
   (if __omega1 (setq _omega1 __omega1)) _omega1)
  (:omega2
   (&optional __omega2)
   (if __omega2 (setq _omega2 __omega2)) _omega2)
  (:omega3
   (&optional __omega3)
   (if __omega3 (setq _omega3 __omega3)) _omega3)
  (:serialization-length
   ()
   (+
    ;; float32 _theta0
    4
    ;; float32 _theta1
    4
    ;; float32 _theta2
    4
    ;; float32 _theta3
    4
    ;; float32 _omega0
    4
    ;; float32 _omega1
    4
    ;; float32 _omega2
    4
    ;; float32 _omega3
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _theta0
       (sys::poke _theta0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta1
       (sys::poke _theta1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta2
       (sys::poke _theta2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta3
       (sys::poke _theta3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega0
       (sys::poke _omega0 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega1
       (sys::poke _omega1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega2
       (sys::poke _omega2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _omega3
       (sys::poke _omega3 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _theta0
     (setq _theta0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta1
     (setq _theta1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta2
     (setq _theta2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta3
     (setq _theta3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega0
     (setq _omega0 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega1
     (setq _omega1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega2
     (setq _omega2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _omega3
     (setq _omega3 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get moving_base::motordesc :md5sum-) "da0dbaec18ab73e2b9363331f9a40286")
(setf (get moving_base::motordesc :datatype-) "moving_base/motordesc")
(setf (get moving_base::motordesc :definition-)
      "float32 theta0
float32 theta1
float32 theta2
float32 theta3
float32 omega0
float32 omega1
float32 omega2
float32 omega3
")



(provide :moving_base/motordesc "da0dbaec18ab73e2b9363331f9a40286")


