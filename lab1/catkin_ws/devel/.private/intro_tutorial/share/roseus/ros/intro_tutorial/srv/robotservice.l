;; Auto-generated. Do not edit!


(when (boundp 'intro_tutorial::robotservice)
  (if (not (find-package "INTRO_TUTORIAL"))
    (make-package "INTRO_TUTORIAL"))
  (shadow 'robotservice (find-package "INTRO_TUTORIAL")))
(unless (find-package "INTRO_TUTORIAL::ROBOTSERVICE")
  (make-package "INTRO_TUTORIAL::ROBOTSERVICE"))
(unless (find-package "INTRO_TUTORIAL::ROBOTSERVICEREQUEST")
  (make-package "INTRO_TUTORIAL::ROBOTSERVICEREQUEST"))
(unless (find-package "INTRO_TUTORIAL::ROBOTSERVICERESPONSE")
  (make-package "INTRO_TUTORIAL::ROBOTSERVICERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass intro_tutorial::robotserviceRequest
  :super ros::object
  :slots (_header _station_id ))

(defmethod intro_tutorial::robotserviceRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:station_id __station_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _station_id (round __station_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:station_id
   (&optional __station_id)
   (if __station_id (setq _station_id __station_id)) _station_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _station_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _station_id
       (write-long _station_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _station_id
     (setq _station_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass intro_tutorial::robotserviceResponse
  :super ros::object
  :slots (_room_id ))

(defmethod intro_tutorial::robotserviceResponse
  (:init
   (&key
    ((:room_id __room_id) 0)
    )
   (send-super :init)
   (setq _room_id (round __room_id))
   self)
  (:room_id
   (&optional __room_id)
   (if __room_id (setq _room_id __room_id)) _room_id)
  (:serialization-length
   ()
   (+
    ;; int32 _room_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _room_id
       (write-long _room_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _room_id
     (setq _room_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass intro_tutorial::robotservice
  :super ros::object
  :slots ())

(setf (get intro_tutorial::robotservice :md5sum-) "5e604e0f37596f59d351957b85cd7f37")
(setf (get intro_tutorial::robotservice :datatype-) "intro_tutorial/robotservice")
(setf (get intro_tutorial::robotservice :request) intro_tutorial::robotserviceRequest)
(setf (get intro_tutorial::robotservice :response) intro_tutorial::robotserviceResponse)

(defmethod intro_tutorial::robotserviceRequest
  (:response () (instance intro_tutorial::robotserviceResponse :init)))

(setf (get intro_tutorial::robotserviceRequest :md5sum-) "5e604e0f37596f59d351957b85cd7f37")
(setf (get intro_tutorial::robotserviceRequest :datatype-) "intro_tutorial/robotserviceRequest")
(setf (get intro_tutorial::robotserviceRequest :definition-)
      "Header header
int32 station_id

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
int32 room_id

")

(setf (get intro_tutorial::robotserviceResponse :md5sum-) "5e604e0f37596f59d351957b85cd7f37")
(setf (get intro_tutorial::robotserviceResponse :datatype-) "intro_tutorial/robotserviceResponse")
(setf (get intro_tutorial::robotserviceResponse :definition-)
      "Header header
int32 station_id

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id
---
int32 room_id

")



(provide :intro_tutorial/robotservice "5e604e0f37596f59d351957b85cd7f37")


