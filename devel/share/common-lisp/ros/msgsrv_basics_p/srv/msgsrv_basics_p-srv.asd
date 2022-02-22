
(cl:in-package :asdf)

(defsystem "msgsrv_basics_p-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WarningSwitch" :depends-on ("_package_WarningSwitch"))
    (:file "_package_WarningSwitch" :depends-on ("_package"))
  ))