
(cl:in-package :asdf)

(defsystem "scara_cpe_kinematics-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "gotoxy" :depends-on ("_package_gotoxy"))
    (:file "_package_gotoxy" :depends-on ("_package"))
  ))