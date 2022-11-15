; Auto-generated. Do not edit!


(cl:in-package pcl_rslidar_pkg-msg)


;//! \htmlinclude float_t.msg.html

(cl:defclass <float_t> (roslisp-msg-protocol:ros-message)
  ((min
    :reader min
    :initarg :min
    :type cl:float
    :initform 0.0)
   (max
    :reader max
    :initarg :max
    :type cl:float
    :initform 0.0))
)

(cl:defclass float_t (<float_t>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <float_t>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'float_t)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pcl_rslidar_pkg-msg:<float_t> is deprecated: use pcl_rslidar_pkg-msg:float_t instead.")))

(cl:ensure-generic-function 'min-val :lambda-list '(m))
(cl:defmethod min-val ((m <float_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_rslidar_pkg-msg:min-val is deprecated.  Use pcl_rslidar_pkg-msg:min instead.")
  (min m))

(cl:ensure-generic-function 'max-val :lambda-list '(m))
(cl:defmethod max-val ((m <float_t>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pcl_rslidar_pkg-msg:max-val is deprecated.  Use pcl_rslidar_pkg-msg:max instead.")
  (max m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <float_t>) ostream)
  "Serializes a message object of type '<float_t>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <float_t>) istream)
  "Deserializes a message object of type '<float_t>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<float_t>)))
  "Returns string type for a message object of type '<float_t>"
  "pcl_rslidar_pkg/float_t")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'float_t)))
  "Returns string type for a message object of type 'float_t"
  "pcl_rslidar_pkg/float_t")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<float_t>)))
  "Returns md5sum for a message object of type '<float_t>"
  "b3ee9ed25575b46bb47c7673ad202faa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'float_t)))
  "Returns md5sum for a message object of type 'float_t"
  "b3ee9ed25575b46bb47c7673ad202faa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<float_t>)))
  "Returns full string definition for message of type '<float_t>"
  (cl:format cl:nil "float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'float_t)))
  "Returns full string definition for message of type 'float_t"
  (cl:format cl:nil "float32 min~%float32 max~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <float_t>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <float_t>))
  "Converts a ROS message object to a list"
  (cl:list 'float_t
    (cl:cons ':min (min msg))
    (cl:cons ':max (max msg))
))
