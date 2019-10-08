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

class setpt_msg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setx = null;
    }
    else {
      if (initObj.hasOwnProperty('setx')) {
        this.setx = initObj.setx
      }
      else {
        this.setx = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type setpt_msg
    // Check that the constant length array field [setx] has the right length
    if (obj.setx.length !== 6) {
      throw new Error('Unable to serialize array field setx - length must be 6')
    }
    // Serialize message field [setx]
    bufferOffset = _arraySerializer.float64(obj.setx, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type setpt_msg
    let len;
    let data = new setpt_msg(null);
    // Deserialize message field [setx]
    data.setx = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'fbl_control/setpt_msg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cdeb67591fcccb6b7952b3b145d3c23b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[6] setx
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new setpt_msg(null);
    if (msg.setx !== undefined) {
      resolved.setx = msg.setx;
    }
    else {
      resolved.setx = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = setpt_msg;
