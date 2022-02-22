// Auto-generated. Do not edit!

// (in-package msgsrv_basics_p.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class WarningSwitchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.req_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('req_msg')) {
        this.req_msg = initObj.req_msg
      }
      else {
        this.req_msg = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningSwitchRequest
    // Serialize message field [req_msg]
    bufferOffset = _serializer.bool(obj.req_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningSwitchRequest
    let len;
    let data = new WarningSwitchRequest(null);
    // Deserialize message field [req_msg]
    data.req_msg = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'msgsrv_basics_p/WarningSwitchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ae5b5a3c1de1477c8379c5ab18d894d3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool req_msg
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningSwitchRequest(null);
    if (msg.req_msg !== undefined) {
      resolved.req_msg = msg.req_msg;
    }
    else {
      resolved.req_msg = false
    }

    return resolved;
    }
};

class WarningSwitchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.res_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('res_msg')) {
        this.res_msg = initObj.res_msg
      }
      else {
        this.res_msg = new std_msgs.msg.String();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WarningSwitchResponse
    // Serialize message field [res_msg]
    bufferOffset = std_msgs.msg.String.serialize(obj.res_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WarningSwitchResponse
    let len;
    let data = new WarningSwitchResponse(null);
    // Deserialize message field [res_msg]
    data.res_msg = std_msgs.msg.String.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.String.getMessageSize(object.res_msg);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'msgsrv_basics_p/WarningSwitchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e59d47478f843b11a9955719c87001a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/String res_msg
    
    
    ================================================================================
    MSG: std_msgs/String
    string data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WarningSwitchResponse(null);
    if (msg.res_msg !== undefined) {
      resolved.res_msg = std_msgs.msg.String.Resolve(msg.res_msg)
    }
    else {
      resolved.res_msg = new std_msgs.msg.String()
    }

    return resolved;
    }
};

module.exports = {
  Request: WarningSwitchRequest,
  Response: WarningSwitchResponse,
  md5sum() { return '6cf6f195cf922f022d7cdea6a7f7d821'; },
  datatype() { return 'msgsrv_basics_p/WarningSwitch'; }
};
