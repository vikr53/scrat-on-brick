# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from moving_base/motordesc.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class motordesc(genpy.Message):
  _md5sum = "da0dbaec18ab73e2b9363331f9a40286"
  _type = "moving_base/motordesc"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 theta0
float32 theta1
float32 theta2
float32 theta3
float32 omega0
float32 omega1
float32 omega2
float32 omega3"""
  __slots__ = ['theta0','theta1','theta2','theta3','omega0','omega1','omega2','omega3']
  _slot_types = ['float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       theta0,theta1,theta2,theta3,omega0,omega1,omega2,omega3

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(motordesc, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.theta0 is None:
        self.theta0 = 0.
      if self.theta1 is None:
        self.theta1 = 0.
      if self.theta2 is None:
        self.theta2 = 0.
      if self.theta3 is None:
        self.theta3 = 0.
      if self.omega0 is None:
        self.omega0 = 0.
      if self.omega1 is None:
        self.omega1 = 0.
      if self.omega2 is None:
        self.omega2 = 0.
      if self.omega3 is None:
        self.omega3 = 0.
    else:
      self.theta0 = 0.
      self.theta1 = 0.
      self.theta2 = 0.
      self.theta3 = 0.
      self.omega0 = 0.
      self.omega1 = 0.
      self.omega2 = 0.
      self.omega3 = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_8f().pack(_x.theta0, _x.theta1, _x.theta2, _x.theta3, _x.omega0, _x.omega1, _x.omega2, _x.omega3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.theta0, _x.theta1, _x.theta2, _x.theta3, _x.omega0, _x.omega1, _x.omega2, _x.omega3,) = _get_struct_8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_8f().pack(_x.theta0, _x.theta1, _x.theta2, _x.theta3, _x.omega0, _x.omega1, _x.omega2, _x.omega3))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 32
      (_x.theta0, _x.theta1, _x.theta2, _x.theta3, _x.omega0, _x.omega1, _x.omega2, _x.omega3,) = _get_struct_8f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_8f = None
def _get_struct_8f():
    global _struct_8f
    if _struct_8f is None:
        _struct_8f = struct.Struct("<8f")
    return _struct_8f