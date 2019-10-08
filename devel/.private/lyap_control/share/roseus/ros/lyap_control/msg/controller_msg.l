;; Auto-generated. Do not edit!


(when (boundp 'lyap_control::controller_msg)
  (if (not (find-package "LYAP_CONTROL"))
    (make-package "LYAP_CONTROL"))
  (shadow 'controller_msg (find-package "LYAP_CONTROL")))
(unless (find-package "LYAP_CONTROL::CONTROLLER_MSG")
  (make-package "LYAP_CONTROL::CONTROLLER_MSG"))

(in-package "ROS")
;;//! \htmlinclude controller_msg.msg.html


(defclass lyap_control::controller_msg
  :super ros::object
  :slots (_u ))

(defmethod lyap_control::controller_msg
  (:init
   (&key
    ((:u __u) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _u __u)
   self)
  (:u
   (&optional __u)
   (if __u (setq _u __u)) _u)
  (:serialization-length
   ()
   (+
    ;; float64[3] _u
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _u
     (dotimes (i 3)
       (sys::poke (elt _u i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _u
   (dotimes (i (length _u))
     (setf (elt _u i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get lyap_control::controller_msg :md5sum-) "5b5645f375d1be153a2332d0066f1b46")
(setf (get lyap_control::controller_msg :datatype-) "lyap_control/controller_msg")
(setf (get lyap_control::controller_msg :definition-)
      "float64[3] u

")



(provide :lyap_control/controller_msg "5b5645f375d1be153a2332d0066f1b46")


