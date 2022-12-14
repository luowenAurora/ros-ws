// Generated by gencpp from file pcl_rslidar_pkg/float_t.msg
// DO NOT EDIT!


#ifndef PCL_RSLIDAR_PKG_MESSAGE_FLOAT_T_H
#define PCL_RSLIDAR_PKG_MESSAGE_FLOAT_T_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pcl_rslidar_pkg
{
template <class ContainerAllocator>
struct float_t_
{
  typedef float_t_<ContainerAllocator> Type;

  float_t_()
    : min(0.0)
    , max(0.0)  {
    }
  float_t_(const ContainerAllocator& _alloc)
    : min(0.0)
    , max(0.0)  {
  (void)_alloc;
    }



   typedef float _min_type;
  _min_type min;

   typedef float _max_type;
  _max_type max;





  typedef boost::shared_ptr< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> const> ConstPtr;

}; // struct float_t_

typedef ::pcl_rslidar_pkg::float_t_<std::allocator<void> > float_t;

typedef boost::shared_ptr< ::pcl_rslidar_pkg::float_t > float_tPtr;
typedef boost::shared_ptr< ::pcl_rslidar_pkg::float_t const> float_tConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pcl_rslidar_pkg::float_t_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pcl_rslidar_pkg::float_t_<ContainerAllocator1> & lhs, const ::pcl_rslidar_pkg::float_t_<ContainerAllocator2> & rhs)
{
  return lhs.min == rhs.min &&
    lhs.max == rhs.max;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pcl_rslidar_pkg::float_t_<ContainerAllocator1> & lhs, const ::pcl_rslidar_pkg::float_t_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pcl_rslidar_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b3ee9ed25575b46bb47c7673ad202faa";
  }

  static const char* value(const ::pcl_rslidar_pkg::float_t_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb3ee9ed25575b46bULL;
  static const uint64_t static_value2 = 0xb47c7673ad202faaULL;
};

template<class ContainerAllocator>
struct DataType< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pcl_rslidar_pkg/float_t";
  }

  static const char* value(const ::pcl_rslidar_pkg::float_t_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 min\n"
"float32 max\n"
;
  }

  static const char* value(const ::pcl_rslidar_pkg::float_t_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.min);
      stream.next(m.max);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct float_t_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pcl_rslidar_pkg::float_t_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pcl_rslidar_pkg::float_t_<ContainerAllocator>& v)
  {
    s << indent << "min: ";
    Printer<float>::stream(s, indent + "  ", v.min);
    s << indent << "max: ";
    Printer<float>::stream(s, indent + "  ", v.max);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PCL_RSLIDAR_PKG_MESSAGE_FLOAT_T_H
