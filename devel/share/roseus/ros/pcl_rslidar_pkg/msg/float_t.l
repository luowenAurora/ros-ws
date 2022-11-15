;; Auto-generated. Do not edit!


(when (boundp 'pcl_rslidar_pkg::float_t)
  (if (not (find-package "PCL_RSLIDAR_PKG"))
    (make-package "PCL_RSLIDAR_PKG"))
  (shadow 'float_t (find-package "PCL_RSLIDAR_PKG")))
(unless (find-package "PCL_RSLIDAR_PKG::FLOAT_T")
  (make-package "PCL_RSLIDAR_PKG::FLOAT_T"))

(in-package "ROS")
;;//! \htmlinclude float_t.msg.html


(defclass pcl_rslidar_pkg::float_t
  :super ros::object
  :slots (_min _max ))

(defmethod pcl_rslidar_pkg::float_t
  (:init
   (&key
    ((:min __min) 0.0)
    ((:max __max) 0.0)
    )
   (send-super :init)
   (setq _min (float __min))
   (setq _max (float __max))
   self)
  (:min
   (&optional __min)
   (if __min (setq _min __min)) _min)
  (:max
   (&optional __max)
   (if __max (setq _max __max)) _max)
  (:serialization-length
   ()
   (+
    ;; float32 _min
    4
    ;; float32 _max
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _min
       (sys::poke _min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max
       (sys::poke _max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _min
     (setq _min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max
     (setq _max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pcl_rslidar_pkg::float_t :md5sum-) "b3ee9ed25575b46bb47c7673ad202faa")
(setf (get pcl_rslidar_pkg::float_t :datatype-) "pcl_rslidar_pkg/float_t")
(setf (get pcl_rslidar_pkg::float_t :definition-)
      "float32 min
float32 max

")



(provide :pcl_rslidar_pkg/float_t "b3ee9ed25575b46bb47c7673ad202faa")


