
(cl:in-package :asdf)

(defsystem "pcl_rslidar_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "float_t" :depends-on ("_package_float_t"))
    (:file "_package_float_t" :depends-on ("_package"))
  ))