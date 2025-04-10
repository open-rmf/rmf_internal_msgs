cmake_minimum_required(VERSION 3.5)

project(rmf_fleet_msgs)

# Default to C++14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
endif()
if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  # we dont use add_compile_options with pedantic in message packages
  # because the Python C extensions dont comply with it
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Wpedantic")
endif()

find_package(ament_cmake REQUIRED)
find_package(builtin_interfaces REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/Location.msg"
  "msg/RobotMode.msg"
  "msg/RobotState.msg"
  "msg/FleetState.msg"
  "msg/ModeRequest.msg"
  "msg/DestinationRequest.msg"
  "msg/PathRequest.msg"
  "msg/PauseRequest.msg"
  "msg/ModeParameter.msg"
  "msg/DockParameter.msg"
  "msg/Dock.msg"
  "msg/DockSummary.msg"
  "msg/LaneRequest.msg"
  "msg/ClosedLanes.msg"
  "msg/InterruptRequest.msg"
  "msg/SpeedLimitedLane.msg"
  "msg/SpeedLimitRequest.msg"
  "msg/LaneStates.msg"
  "msg/ChargingAssignment.msg"
  "msg/ChargingAssignments.msg"
  "msg/MutexGroupAssignment.msg"
  "msg/MutexGroupManualRelease.msg"
  "msg/MutexGroupRequest.msg"
  "msg/MutexGroupStates.msg"
  "msg/BeaconState.msg"
  "msg/DeliveryAlert.msg"
  "msg/DeliveryAlertAction.msg"
  "msg/DeliveryAlertCategory.msg"
  "msg/DeliveryAlertTier.msg"
  "msg/EmergencySignal.msg"
)

set(srv_files
  "srv/LiftClearance.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES builtin_interfaces
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
