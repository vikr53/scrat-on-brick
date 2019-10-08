// Generated by gencpp from file lyap_control/controller_msg.msg
// DO NOT EDIT!


#ifndef LYAP_CONTROL_MESSAGE_CONTROLLER_MSG_H
#define LYAP_CONTROL_MESSAGE_CONTROLLER_MSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lyap_control
{
template <class ContainerAllocator>
struct controller_msg_
{
  typedef controller_msg_<ContainerAllocator> Type;

  controller_msg_()
    : u()  {
      u.assign(0.0);
  }
  controller_msg_(const ContainerAllocator& _alloc)
    : u()  {
  (void)_alloc;
      u.assign(0.0);
  }



   typedef boost::array<double, 3>  _u_type;
  _u_type u;





  typedef boost::shared_ptr< ::lyap_control::controller_msg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lyap_control::controller_msg_<ContainerAllocator> const> ConstPtr;

}; // struct controller_msg_

typedef ::lyap_control::controller_msg_<std::allocator<void> > controller_msg;

typedef boost::shared_ptr< ::lyap_control::controller_msg > controller_msgPtr;
typedef boost::shared_ptr< ::lyap_control::controller_msg const> controller_msgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lyap_control::controller_msg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lyap_control::controller_msg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace lyap_control

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'lyap_control': ['/home/vik/controller_ws/src/skrat-wmr-dev/lyap_control/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::lyap_control::controller_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lyap_control::controller_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lyap_control::controller_msg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lyap_control::controller_msg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lyap_control::controller_msg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lyap_control::controller_msg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lyap_control::controller_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "5b5645f375d1be153a2332d0066f1b46";
  }

  static const char* value(const ::lyap_control::controller_msg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x5b5645f375d1be15ULL;
  static const uint64_t static_value2 = 0x3a2332d0066f1b46ULL;
};

template<class ContainerAllocator>
struct DataType< ::lyap_control::controller_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lyap_control/controller_msg";
  }

  static const char* value(const ::lyap_control::controller_msg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lyap_control::controller_msg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float64[3] u\n\
";
  }

  static const char* value(const ::lyap_control::controller_msg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lyap_control::controller_msg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.u);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct controller_msg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lyap_control::controller_msg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lyap_control::controller_msg_<ContainerAllocator>& v)
  {
    s << indent << "u[]" << std::endl;
    for (size_t i = 0; i < v.u.size(); ++i)
    {
      s << indent << "  u[" << i << "]: ";
      Printer<double>::stream(s, indent + "  ", v.u[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LYAP_CONTROL_MESSAGE_CONTROLLER_MSG_H
