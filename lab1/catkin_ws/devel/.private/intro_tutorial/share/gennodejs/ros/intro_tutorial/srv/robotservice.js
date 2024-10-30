// Auto-generated. Do not edit!

// (in-package intro_tutorial.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class robotserviceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.station_id = null;
    }
    else {
      if (initObj.hasOwnProperty('station_id')) {
        this.station_id = initObj.station_id
      }
      else {
        this.station_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotserviceRequest
    // Serialize message field [station_id]
    bufferOffset = _serializer.int32(obj.station_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotserviceRequest
    let len;
    let data = new robotserviceRequest(null);
    // Deserialize message field [station_id]
    data.station_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intro_tutorial/robotserviceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd2e85b14c2a654f53456a276ba4d3d0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 station_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotserviceRequest(null);
    if (msg.station_id !== undefined) {
      resolved.station_id = msg.station_id;
    }
    else {
      resolved.station_id = 0
    }

    return resolved;
    }
};

class robotserviceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.room_id = null;
    }
    else {
      if (initObj.hasOwnProperty('room_id')) {
        this.room_id = initObj.room_id
      }
      else {
        this.room_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotserviceResponse
    // Serialize message field [room_id]
    bufferOffset = _serializer.int32(obj.room_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotserviceResponse
    let len;
    let data = new robotserviceResponse(null);
    // Deserialize message field [room_id]
    data.room_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'intro_tutorial/robotserviceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb9d79aabfdcaaabb6b9a15a2f03dd5b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 room_id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotserviceResponse(null);
    if (msg.room_id !== undefined) {
      resolved.room_id = msg.room_id;
    }
    else {
      resolved.room_id = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: robotserviceRequest,
  Response: robotserviceResponse,
  md5sum() { return 'ce58a8c5b0e3f648179cb1035104721b'; },
  datatype() { return 'intro_tutorial/robotservice'; }
};
