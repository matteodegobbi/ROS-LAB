; Auto-generated. Do not edit!


(cl:in-package intro_tutorial-srv)


;//! \htmlinclude robotservice-request.msg.html

(cl:defclass <robotservice-request> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (station_id
    :reader station_id
    :initarg :station_id
    :type cl:integer
    :initform 0))
)

(cl:defclass robotservice-request (<robotservice-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotservice-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotservice-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intro_tutorial-srv:<robotservice-request> is deprecated: use intro_tutorial-srv:robotservice-request instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <robotservice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-srv:header-val is deprecated.  Use intro_tutorial-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'station_id-val :lambda-list '(m))
(cl:defmethod station_id-val ((m <robotservice-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-srv:station_id-val is deprecated.  Use intro_tutorial-srv:station_id instead.")
  (station_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotservice-request>) ostream)
  "Serializes a message object of type '<robotservice-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'station_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotservice-request>) istream)
  "Deserializes a message object of type '<robotservice-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'station_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotservice-request>)))
  "Returns string type for a service object of type '<robotservice-request>"
  "intro_tutorial/robotserviceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotservice-request)))
  "Returns string type for a service object of type 'robotservice-request"
  "intro_tutorial/robotserviceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotservice-request>)))
  "Returns md5sum for a message object of type '<robotservice-request>"
  "5e604e0f37596f59d351957b85cd7f37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotservice-request)))
  "Returns md5sum for a message object of type 'robotservice-request"
  "5e604e0f37596f59d351957b85cd7f37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotservice-request>)))
  "Returns full string definition for message of type '<robotservice-request>"
  (cl:format cl:nil "Header header~%int32 station_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotservice-request)))
  "Returns full string definition for message of type 'robotservice-request"
  (cl:format cl:nil "Header header~%int32 station_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotservice-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotservice-request>))
  "Converts a ROS message object to a list"
  (cl:list 'robotservice-request
    (cl:cons ':header (header msg))
    (cl:cons ':station_id (station_id msg))
))
;//! \htmlinclude robotservice-response.msg.html

(cl:defclass <robotservice-response> (roslisp-msg-protocol:ros-message)
  ((room_id
    :reader room_id
    :initarg :room_id
    :type cl:integer
    :initform 0))
)

(cl:defclass robotservice-response (<robotservice-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <robotservice-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'robotservice-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intro_tutorial-srv:<robotservice-response> is deprecated: use intro_tutorial-srv:robotservice-response instead.")))

(cl:ensure-generic-function 'room_id-val :lambda-list '(m))
(cl:defmethod room_id-val ((m <robotservice-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-srv:room_id-val is deprecated.  Use intro_tutorial-srv:room_id instead.")
  (room_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <robotservice-response>) ostream)
  "Serializes a message object of type '<robotservice-response>"
  (cl:let* ((signed (cl:slot-value msg 'room_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <robotservice-response>) istream)
  "Deserializes a message object of type '<robotservice-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'room_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<robotservice-response>)))
  "Returns string type for a service object of type '<robotservice-response>"
  "intro_tutorial/robotserviceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotservice-response)))
  "Returns string type for a service object of type 'robotservice-response"
  "intro_tutorial/robotserviceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<robotservice-response>)))
  "Returns md5sum for a message object of type '<robotservice-response>"
  "5e604e0f37596f59d351957b85cd7f37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'robotservice-response)))
  "Returns md5sum for a message object of type 'robotservice-response"
  "5e604e0f37596f59d351957b85cd7f37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<robotservice-response>)))
  "Returns full string definition for message of type '<robotservice-response>"
  (cl:format cl:nil "int32 room_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'robotservice-response)))
  "Returns full string definition for message of type 'robotservice-response"
  (cl:format cl:nil "int32 room_id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <robotservice-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <robotservice-response>))
  "Converts a ROS message object to a list"
  (cl:list 'robotservice-response
    (cl:cons ':room_id (room_id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'robotservice)))
  'robotservice-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'robotservice)))
  'robotservice-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'robotservice)))
  "Returns string type for a service object of type '<robotservice>"
  "intro_tutorial/robotservice")