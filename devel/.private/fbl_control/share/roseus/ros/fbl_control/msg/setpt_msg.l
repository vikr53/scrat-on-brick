;; Auto-generated. Do not edit!


(when (boundp 'fbl_control::setpt_msg)
  (if (not (find-package "FBL_CONTROL"))
    (make-package "FBL_CONTROL"))
  (shadow 'setpt_msg (find-package "FBL_CONTROL")))
(unless (find-package "FBL_CONTROL::SETPT_MSG")
  (make-package "FBL_CONTROL::SETPT_MSG"))

(in-package "ROS")
;;//! \htmlinclude setpt_msg.msg.html


(defclass fbl_control::setpt_msg
  :super ros::object
  :slots (_setx ))

(defmethod fbl_control::setpt_msg
  (:init
   (&key
    ((:setx __setx) (make-array 6 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _setx __setx)
   self)
  (:setx
   (&optional __setx)
   (if __setx (setq _setx __setx)) _setx)
  (:serialization-length
   ()
   (+
    ;; float64[6] _setx
    (* 8    6)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[6] _setx
     (dotimes (i 6)
       (sys::poke (elt _setx i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _setx
   (dotimes (i (length _setx))
     (setf (elt _setx i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get fbl_control::setpt_msg :md5sum-) "cdeb67591fcccb6b7952b3b145d3c23b")
(setf (get fbl_control::setpt_msg :datatype-) "fbl_control/setpt_msg")
(setf (get fbl_control::setpt_msg :definition-)
      "float64[6] setx
")



(provide :fbl_control/setpt_msg "cdeb67591fcccb6b7952b3b145d3c23b")


