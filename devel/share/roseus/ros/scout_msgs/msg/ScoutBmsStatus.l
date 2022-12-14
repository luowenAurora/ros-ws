;; Auto-generated. Do not edit!


(when (boundp 'scout_msgs::ScoutBmsStatus)
  (if (not (find-package "SCOUT_MSGS"))
    (make-package "SCOUT_MSGS"))
  (shadow 'ScoutBmsStatus (find-package "SCOUT_MSGS")))
(unless (find-package "SCOUT_MSGS::SCOUTBMSSTATUS")
  (make-package "SCOUT_MSGS::SCOUTBMSSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ScoutBmsStatus.msg.html


(defclass scout_msgs::ScoutBmsStatus
  :super ros::object
  :slots (_SOC _SOH _battery_voltage _battery_current _battery_temperature _Alarm_Status_1 _Alarm_Status_2 _Warning_Status_1 _Warning_Status_2 ))

(defmethod scout_msgs::ScoutBmsStatus
  (:init
   (&key
    ((:SOC __SOC) 0.0)
    ((:SOH __SOH) 0.0)
    ((:battery_voltage __battery_voltage) 0.0)
    ((:battery_current __battery_current) 0.0)
    ((:battery_temperature __battery_temperature) 0.0)
    ((:Alarm_Status_1 __Alarm_Status_1) 0)
    ((:Alarm_Status_2 __Alarm_Status_2) 0)
    ((:Warning_Status_1 __Warning_Status_1) 0)
    ((:Warning_Status_2 __Warning_Status_2) 0)
    )
   (send-super :init)
   (setq _SOC (float __SOC))
   (setq _SOH (float __SOH))
   (setq _battery_voltage (float __battery_voltage))
   (setq _battery_current (float __battery_current))
   (setq _battery_temperature (float __battery_temperature))
   (setq _Alarm_Status_1 (round __Alarm_Status_1))
   (setq _Alarm_Status_2 (round __Alarm_Status_2))
   (setq _Warning_Status_1 (round __Warning_Status_1))
   (setq _Warning_Status_2 (round __Warning_Status_2))
   self)
  (:SOC
   (&optional __SOC)
   (if __SOC (setq _SOC __SOC)) _SOC)
  (:SOH
   (&optional __SOH)
   (if __SOH (setq _SOH __SOH)) _SOH)
  (:battery_voltage
   (&optional __battery_voltage)
   (if __battery_voltage (setq _battery_voltage __battery_voltage)) _battery_voltage)
  (:battery_current
   (&optional __battery_current)
   (if __battery_current (setq _battery_current __battery_current)) _battery_current)
  (:battery_temperature
   (&optional __battery_temperature)
   (if __battery_temperature (setq _battery_temperature __battery_temperature)) _battery_temperature)
  (:Alarm_Status_1
   (&optional __Alarm_Status_1)
   (if __Alarm_Status_1 (setq _Alarm_Status_1 __Alarm_Status_1)) _Alarm_Status_1)
  (:Alarm_Status_2
   (&optional __Alarm_Status_2)
   (if __Alarm_Status_2 (setq _Alarm_Status_2 __Alarm_Status_2)) _Alarm_Status_2)
  (:Warning_Status_1
   (&optional __Warning_Status_1)
   (if __Warning_Status_1 (setq _Warning_Status_1 __Warning_Status_1)) _Warning_Status_1)
  (:Warning_Status_2
   (&optional __Warning_Status_2)
   (if __Warning_Status_2 (setq _Warning_Status_2 __Warning_Status_2)) _Warning_Status_2)
  (:serialization-length
   ()
   (+
    ;; float64 _SOC
    8
    ;; float64 _SOH
    8
    ;; float64 _battery_voltage
    8
    ;; float64 _battery_current
    8
    ;; float64 _battery_temperature
    8
    ;; uint8 _Alarm_Status_1
    1
    ;; uint8 _Alarm_Status_2
    1
    ;; uint8 _Warning_Status_1
    1
    ;; uint8 _Warning_Status_2
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _SOC
       (sys::poke _SOC (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _SOH
       (sys::poke _SOH (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_voltage
       (sys::poke _battery_voltage (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_current
       (sys::poke _battery_current (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _battery_temperature
       (sys::poke _battery_temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _Alarm_Status_1
       (write-byte _Alarm_Status_1 s)
     ;; uint8 _Alarm_Status_2
       (write-byte _Alarm_Status_2 s)
     ;; uint8 _Warning_Status_1
       (write-byte _Warning_Status_1 s)
     ;; uint8 _Warning_Status_2
       (write-byte _Warning_Status_2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _SOC
     (setq _SOC (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _SOH
     (setq _SOH (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_voltage
     (setq _battery_voltage (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_current
     (setq _battery_current (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _battery_temperature
     (setq _battery_temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _Alarm_Status_1
     (setq _Alarm_Status_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Alarm_Status_2
     (setq _Alarm_Status_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Warning_Status_1
     (setq _Warning_Status_1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _Warning_Status_2
     (setq _Warning_Status_2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get scout_msgs::ScoutBmsStatus :md5sum-) "8825e008639377a676911a7ad9d079ce")
(setf (get scout_msgs::ScoutBmsStatus :datatype-) "scout_msgs/ScoutBmsStatus")
(setf (get scout_msgs::ScoutBmsStatus :definition-)
      "#BMS date
float64 SOC
float64 SOH
float64 battery_voltage
float64 battery_current
float64 battery_temperature

#BMS status
uint8 Alarm_Status_1
uint8 Alarm_Status_2
uint8 Warning_Status_1
uint8 Warning_Status_2

")



(provide :scout_msgs/ScoutBmsStatus "8825e008639377a676911a7ad9d079ce")


