// Auto-generated. Do not edit!

// (in-package moving_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class motordesc {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.theta0 = null;
      this.theta1 = null;
      this.theta2 = null;
      this.theta3 = null;
      this.omega0 = null;
      this.omega1 = null;
      this.omega2 = null;
      this.omega3 = null;
    }
    else {
      if (initObj.hasOwnProperty('theta0')) {
        this.theta0 = initObj.theta0
      }
      else {
        this.theta0 = 0.0;
      }
      if (initObj.hasOwnProperty('theta1')) {
        this.theta1 = initObj.theta1
      }
      else {
        this.theta1 = 0.0;
      }
      if (initObj.hasOwnProperty('theta2')) {
        this.theta2 = initObj.theta2
      }
      else {
        this.theta2 = 0.0;
      }
      if (initObj.hasOwnProperty('theta3')) {
        this.theta3 = initObj.theta3
      }
      else {
        this.theta3 = 0.0;
      }
      if (initObj.hasOwnProperty('omega0')) {
        this.omega0 = initObj.omega0
      }
      else {
        this.omega0 = 0.0;
      }
      if (initObj.hasOwnProperty('omega1')) {
        this.omega1 = initObj.omega1
      }
      else {
        this.omega1 = 0.0;
      }
      if (initObj.hasOwnProperty('omega2')) {
        this.omega2 = initObj.omega2
      }
      else {
        this.omega2 = 0.0;
      }
      if (initObj.hasOwnProperty('omega3')) {
        this.omega3 = initObj.omega3
      }
      else {
        this.omega3 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type motordesc
    // Serialize message field [theta0]
    bufferOffset = _serializer.float32(obj.theta0, buffer, bufferOffset);
    // Serialize message field [theta1]
    bufferOffset = _serializer.float32(obj.theta1, buffer, bufferOffset);
    // Serialize message field [theta2]
    bufferOffset = _serializer.float32(obj.theta2, buffer, bufferOffset);
    // Serialize message field [theta3]
    bufferOffset = _serializer.float32(obj.theta3, buffer, bufferOffset);
    // Serialize message field [omega0]
    bufferOffset = _serializer.float32(obj.omega0, buffer, bufferOffset);
    // Serialize message field [omega1]
    bufferOffset = _serializer.float32(obj.omega1, buffer, bufferOffset);
    // Serialize message field [omega2]
    bufferOffset = _serializer.float32(obj.omega2, buffer, bufferOffset);
    // Serialize message field [omega3]
    bufferOffset = _serializer.float32(obj.omega3, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type motordesc
    let len;
    let data = new motordesc(null);
    // Deserialize message field [theta0]
    data.theta0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta1]
    data.theta1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta2]
    data.theta2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [theta3]
    data.theta3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega0]
    data.omega0 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega1]
    data.omega1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega2]
    data.omega2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [omega3]
    data.omega3 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'moving_base/motordesc';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da0dbaec18ab73e2b9363331f9a40286';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 theta0
    float32 theta1
    float32 theta2
    float32 theta3
    float32 omega0
    float32 omega1
    float32 omega2
    float32 omega3
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new motordesc(null);
    if (msg.theta0 !== undefined) {
      resolved.theta0 = msg.theta0;
    }
    else {
      resolved.theta0 = 0.0
    }

    if (msg.theta1 !== undefined) {
      resolved.theta1 = msg.theta1;
    }
    else {
      resolved.theta1 = 0.0
    }

    if (msg.theta2 !== undefined) {
      resolved.theta2 = msg.theta2;
    }
    else {
      resolved.theta2 = 0.0
    }

    if (msg.theta3 !== undefined) {
      resolved.theta3 = msg.theta3;
    }
    else {
      resolved.theta3 = 0.0
    }

    if (msg.omega0 !== undefined) {
      resolved.omega0 = msg.omega0;
    }
    else {
      resolved.omega0 = 0.0
    }

    if (msg.omega1 !== undefined) {
      resolved.omega1 = msg.omega1;
    }
    else {
      resolved.omega1 = 0.0
    }

    if (msg.omega2 !== undefined) {
      resolved.omega2 = msg.omega2;
    }
    else {
      resolved.omega2 = 0.0
    }

    if (msg.omega3 !== undefined) {
      resolved.omega3 = msg.omega3;
    }
    else {
      resolved.omega3 = 0.0
    }

    return resolved;
    }
};

module.exports = motordesc;
