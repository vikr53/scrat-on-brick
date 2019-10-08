// Generated by gencpp from file moving_base/motordesc.msg
// DO NOT EDIT!


#ifndef MOVING_BASE_MESSAGE_MOTORDESC_H
#define MOVING_BASE_MESSAGE_MOTORDESC_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace moving_base
{
template <class ContainerAllocator>
struct motordesc_
{
  typedef motordesc_<ContainerAllocator> Type;

  motordesc_()
    : theta0(0.0)
    , theta1(0.0)
    , theta2(0.0)
    , theta3(0.0)
    , omega0(0.0)
    , omega1(0.0)
    , omega2(0.0)
    , omega3(0.0)  {
    }
  motordesc_(const ContainerAllocator& _alloc)
    : theta0(0.0)
    , theta1(0.0)
    , theta2(0.0)
    , theta3(0.0)
    , omega0(0.0)
    , omega1(0.0)
    , omega2(0.0)
    , omega3(0.0)  {
  (void)_alloc;
    }



   typedef float _theta0_type;
  _theta0_type theta0;

   typedef float _theta1_type;
  _theta1_type theta1;

   typedef float _theta2_type;
  _theta2_type theta2;

   typedef float _theta3_type;
  _theta3_type theta3;

   typedef float _omega0_type;
  _omega0_type omega0;

   typedef float _omega1_type;
  _omega1_type omega1;

   typedef float _omega2_type;
  _omega2_type omega2;

   typedef float _omega3_type;
  _omega3_type omega3;





  typedef boost::shared_ptr< ::moving_base::motordesc_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::moving_base::motordesc_<ContainerAllocator> const> ConstPtr;

}; // struct motordesc_

typedef ::moving_base::motordesc_<std::allocator<void> > motordesc;

typedef boost::shared_ptr< ::moving_base::motordesc > motordescPtr;
typedef boost::shared_ptr< ::moving_base::motordesc const> motordescConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::moving_base::motordesc_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::moving_base::motordesc_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace moving_base

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'moving_base': ['/home/vik/controller_ws/src/skrat-wmr-dev/moving-base/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::moving_base::motordesc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::moving_base::motordesc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_base::motordesc_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::moving_base::motordesc_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_base::motordesc_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::moving_base::motordesc_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::moving_base::motordesc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "da0dbaec18ab73e2b9363331f9a40286";
  }

  static const char* value(const ::moving_base::motordesc_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xda0dbaec18ab73e2ULL;
  static const uint64_t static_value2 = 0xb9363331f9a40286ULL;
};

template<class ContainerAllocator>
struct DataType< ::moving_base::motordesc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "moving_base/motordesc";
  }

  static const char* value(const ::moving_base::motordesc_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::moving_base::motordesc_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 theta0\n\
float32 theta1\n\
float32 theta2\n\
float32 theta3\n\
float32 omega0\n\
float32 omega1\n\
float32 omega2\n\
float32 omega3\n\
";
  }

  static const char* value(const ::moving_base::motordesc_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::moving_base::motordesc_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.theta0);
      stream.next(m.theta1);
      stream.next(m.theta2);
      stream.next(m.theta3);
      stream.next(m.omega0);
      stream.next(m.omega1);
      stream.next(m.omega2);
      stream.next(m.omega3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct motordesc_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::moving_base::motordesc_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::moving_base::motordesc_<ContainerAllocator>& v)
  {
    s << indent << "theta0: ";
    Printer<float>::stream(s, indent + "  ", v.theta0);
    s << indent << "theta1: ";
    Printer<float>::stream(s, indent + "  ", v.theta1);
    s << indent << "theta2: ";
    Printer<float>::stream(s, indent + "  ", v.theta2);
    s << indent << "theta3: ";
    Printer<float>::stream(s, indent + "  ", v.theta3);
    s << indent << "omega0: ";
    Printer<float>::stream(s, indent + "  ", v.omega0);
    s << indent << "omega1: ";
    Printer<float>::stream(s, indent + "  ", v.omega1);
    s << indent << "omega2: ";
    Printer<float>::stream(s, indent + "  ", v.omega2);
    s << indent << "omega3: ";
    Printer<float>::stream(s, indent + "  ", v.omega3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOVING_BASE_MESSAGE_MOTORDESC_H
