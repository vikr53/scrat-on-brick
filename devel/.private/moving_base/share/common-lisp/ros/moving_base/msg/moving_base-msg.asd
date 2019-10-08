
(cl:in-package :asdf)

(defsystem "moving_base-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "arduino_status" :depends-on ("_package_arduino_status"))
    (:file "_package_arduino_status" :depends-on ("_package"))
    (:file "motordesc" :depends-on ("_package_motordesc"))
    (:file "_package_motordesc" :depends-on ("_package"))
  ))