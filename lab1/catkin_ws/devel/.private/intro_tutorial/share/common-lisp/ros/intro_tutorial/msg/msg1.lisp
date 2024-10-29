; Auto-generated. Do not edit!


(cl:in-package intro_tutorial-msg)


;//! \htmlinclude msg1.msg.html

(cl:defclass <msg1> (roslisp-msg-protocol:ros-message)
  ((roomID
    :reader roomID
    :initarg :roomID
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (battery_level
    :reader battery_level
    :initarg :battery_level
    :type cl:float
    :initform 0.0))
)

(cl:defclass msg1 (<msg1>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <msg1>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'msg1)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name intro_tutorial-msg:<msg1> is deprecated: use intro_tutorial-msg:msg1 instead.")))

(cl:ensure-generic-function 'roomID-val :lambda-list '(m))
(cl:defmethod roomID-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:roomID-val is deprecated.  Use intro_tutorial-msg:roomID instead.")
  (roomID m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:name-val is deprecated.  Use intro_tutorial-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'battery_level-val :lambda-list '(m))
(cl:defmethod battery_level-val ((m <msg1>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader intro_tutorial-msg:battery_level-val is deprecated.  Use intro_tutorial-msg:battery_level instead.")
  (battery_level m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <msg1>) ostream)
  "Serializes a message object of type '<msg1>"
  (cl:let* ((signed (cl:slot-value msg 'roomID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'battery_level))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <msg1>) istream)
  "Deserializes a message object of type '<msg1>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roomID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'battery_level) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<msg1>)))
  "Returns string type for a message object of type '<msg1>"
  "intro_tutorial/msg1")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'msg1)))
  "Returns string type for a message object of type 'msg1"
  "intro_tutorial/msg1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<msg1>)))
  "Returns md5sum for a message object of type '<msg1>"
  "70735a3b61e646962f4ebd292be7dcd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'msg1)))
  "Returns md5sum for a message object of type 'msg1"
  "70735a3b61e646962f4ebd292be7dcd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<msg1>)))
  "Returns full string definition for message of type '<msg1>"
  (cl:format cl:nil "int32 roomID~%string name~%float32 battery_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'msg1)))
  "Returns full string definition for message of type 'msg1"
  (cl:format cl:nil "int32 roomID~%string name~%float32 battery_level~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <msg1>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <msg1>))
  "Converts a ROS message object to a list"
  (cl:list 'msg1
    (cl:cons ':roomID (roomID msg))
    (cl:cons ':name (name msg))
    (cl:cons ':battery_level (battery_level msg))
))
