// Auto-generated. Do not edit!

// (in-package moving_base.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class arduino_status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.steer_angle = null;
      this.drive_speed = null;
      this.steer_motor = null;
      this.drive_motor = null;
      this.no_rotate = null;
      this.CCW = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('steer_angle')) {
        this.steer_angle = initObj.steer_angle
      }
      else {
        this.steer_angle = 0.0;
      }
      if (initObj.hasOwnProperty('drive_speed')) {
        this.drive_speed = initObj.drive_speed
      }
      else {
        this.drive_speed = 0.0;
      }
      if (initObj.hasOwnProperty('steer_motor')) {
        this.steer_motor = initObj.steer_motor
      }
      else {
        this.steer_motor = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('drive_motor')) {
        this.drive_motor = initObj.drive_motor
      }
      else {
        this.drive_motor = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('no_rotate')) {
        this.no_rotate = initObj.no_rotate
      }
      else {
        this.no_rotate = false;
      }
      if (initObj.hasOwnProperty('CCW')) {
        this.CCW = initObj.CCW
      }
      else {
        this.CCW = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type arduino_status
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [steer_angle]
    bufferOffset = _serializer.float32(obj.steer_angle, buffer, bufferOffset);
    // Serialize message field [drive_speed]
    bufferOffset = _serializer.float32(obj.drive_speed, buffer, bufferOffset);
    // Check that the constant length array field [steer_motor] has the right length
    if (obj.steer_motor.length !== 4) {
      throw new Error('Unable to serialize array field steer_motor - length must be 4')
    }
    // Serialize message field [steer_motor]
    bufferOffset = _arraySerializer.float32(obj.steer_motor, buffer, bufferOffset, 4);
    // Check that the constant length array field [drive_motor] has the right length
    if (obj.drive_motor.length !== 4) {
      throw new Error('Unable to serialize array field drive_motor - length must be 4')
    }
    // Serialize message field [drive_motor]
    bufferOffset = _arraySerializer.float32(obj.drive_motor, buffer, bufferOffset, 4);
    // Serialize message field [no_rotate]
    bufferOffset = _serializer.bool(obj.no_rotate, buffer, bufferOffset);
    // Serialize message field [CCW]
    bufferOffset = _serializer.bool(obj.CCW, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type arduino_status
    let len;
    let data = new arduino_status(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [steer_angle]
    data.steer_angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [drive_speed]
    data.drive_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [steer_motor]
    data.steer_motor = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [drive_motor]
    data.drive_motor = _arrayDeserializer.float32(buffer, bufferOffset, 4)
    // Deserialize message field [no_rotate]
    data.no_rotate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [CCW]
    data.CCW = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 42;
  }

  static datatype() {
    // Returns string type for a message object
    return 'moving_base/arduino_status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3692242dbf898dca171f405d2ccd3d4b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float32 steer_angle
    
    float32 drive_speed
    
    float32[4] steer_motor
    
    float32[4] drive_motor
    
    bool no_rotate
    
    bool CCW
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
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new arduino_status(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.steer_angle !== undefined) {
      resolved.steer_angle = msg.steer_angle;
    }
    else {
      resolved.steer_angle = 0.0
    }

    if (msg.drive_speed !== undefined) {
      resolved.drive_speed = msg.drive_speed;
    }
    else {
      resolved.drive_speed = 0.0
    }

    if (msg.steer_motor !== undefined) {
      resolved.steer_motor = msg.steer_motor;
    }
    else {
      resolved.steer_motor = new Array(4).fill(0)
    }

    if (msg.drive_motor !== undefined) {
      resolved.drive_motor = msg.drive_motor;
    }
    else {
      resolved.drive_motor = new Array(4).fill(0)
    }

    if (msg.no_rotate !== undefined) {
      resolved.no_rotate = msg.no_rotate;
    }
    else {
      resolved.no_rotate = false
    }

    if (msg.CCW !== undefined) {
      resolved.CCW = msg.CCW;
    }
    else {
      resolved.CCW = false
    }

    return resolved;
    }
};

module.exports = arduino_status;
