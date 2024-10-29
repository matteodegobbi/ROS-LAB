// Auto-generated. Do not edit!

// (in-package intro_tutorial.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class msg1 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roomID = null;
      this.name = null;
      this.battery_level = null;
    }
    else {
      if (initObj.hasOwnProperty('roomID')) {
        this.roomID = initObj.roomID
      }
      else {
        this.roomID = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('battery_level')) {
        this.battery_level = initObj.battery_level
      }
      else {
        this.battery_level = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type msg1
    // Serialize message field [roomID]
    bufferOffset = _serializer.int32(obj.roomID, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [battery_level]
    bufferOffset = _serializer.float32(obj.battery_level, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type msg1
    let len;
    let data = new msg1(null);
    // Deserialize message field [roomID]
    data.roomID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [battery_level]
    data.battery_level = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'intro_tutorial/msg1';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '70735a3b61e646962f4ebd292be7dcd7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roomID
    string name
    float32 battery_level
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new msg1(null);
    if (msg.roomID !== undefined) {
      resolved.roomID = msg.roomID;
    }
    else {
      resolved.roomID = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.battery_level !== undefined) {
      resolved.battery_level = msg.battery_level;
    }
    else {
      resolved.battery_level = 0.0
    }

    return resolved;
    }
};

module.exports = msg1;
