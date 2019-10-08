// Auto-generated. Do not edit!

// (in-package fbl_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class controller_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.u = null;
    }
    else {
      if (initObj.hasOwnProperty('u')) {
        this.u = initObj.u
      }
      else {
        this.u = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type controller_msg
    // Check that the constant length array field [u] has the right length
    if (obj.u.length !== 3) {
      throw new Error('Unable to serialize array field u - length must be 3')
    }
    // Serialize message field [u]
    bufferOffset = _arraySerializer.float64(obj.u, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type controller_msg
    let len;
    let data = new controller_msg(null);
    // Deserialize message field [u]
    data.u = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fbl_control/controller_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5b5645f375d1be153a2332d0066f1b46';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[3] u
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new controller_msg(null);
    if (msg.u !== undefined) {
      resolved.u = msg.u;
    }
    else {
      resolved.u = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = controller_msg;
