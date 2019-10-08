
(cl:in-package :asdf)

(defsystem "fbl_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "controller_msg" :depends-on ("_package_controller_msg"))
    (:file "_package_controller_msg" :depends-on ("_package"))
    (:file "plant_msg" :depends-on ("_package_plant_msg"))
    (:file "_package_plant_msg" :depends-on ("_package"))
    (:file "setpt_msg" :depends-on ("_package_setpt_msg"))
    (:file "_package_setpt_msg" :depends-on ("_package"))
  ))