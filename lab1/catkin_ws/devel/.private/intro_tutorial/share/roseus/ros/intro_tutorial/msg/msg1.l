;; Auto-generated. Do not edit!


(when (boundp 'intro_tutorial::msg1)
  (if (not (find-package "INTRO_TUTORIAL"))
    (make-package "INTRO_TUTORIAL"))
  (shadow 'msg1 (find-package "INTRO_TUTORIAL")))
(unless (find-package "INTRO_TUTORIAL::MSG1")
  (make-package "INTRO_TUTORIAL::MSG1"))

(in-package "ROS")
;;//! \htmlinclude msg1.msg.html


(defclass intro_tutorial::msg1
  :super ros::object
  :slots (_roomID _name _battery_level ))

(defmethod intro_tutorial::msg1
  (:init
   (&key
    ((:roomID __roomID) 0)
    ((:name __name) "")
    ((:battery_level __battery_level) 0.0)
    )
   (send-super :init)
   (setq _roomID (round __roomID))
   (setq _name (string __name))
   (setq _battery_level (float __battery_level))
   self)
  (:roomID
   (&optional __roomID)
   (if __roomID (setq _roomID __roomID)) _roomID)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:battery_level
   (&optional __battery_level)
   (if __battery_level (setq _battery_level __battery_level)) _battery_level)
  (:serialization-length
   ()
   (+
    ;; int32 _roomID
    4
    ;; string _name
    4 (length _name)
    ;; float32 _battery_level
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _roomID
       (write-long _roomID s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float32 _battery_level
       (sys::poke _battery_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _roomID
     (setq _roomID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _battery_level
     (setq _battery_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get intro_tutorial::msg1 :md5sum-) "70735a3b61e646962f4ebd292be7dcd7")
(setf (get intro_tutorial::msg1 :datatype-) "intro_tutorial/msg1")
(setf (get intro_tutorial::msg1 :definition-)
      "int32 roomID
string name
float32 battery_level

")



(provide :intro_tutorial/msg1 "70735a3b61e646962f4ebd292be7dcd7")


