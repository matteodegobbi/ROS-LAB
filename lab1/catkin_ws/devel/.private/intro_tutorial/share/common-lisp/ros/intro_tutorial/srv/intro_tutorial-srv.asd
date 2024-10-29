
(cl:in-package :asdf)

(defsystem "intro_tutorial-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "robotservice" :depends-on ("_package_robotservice"))
    (:file "_package_robotservice" :depends-on ("_package"))
    (:file "srv1" :depends-on ("_package_srv1"))
    (:file "_package_srv1" :depends-on ("_package"))
  ))