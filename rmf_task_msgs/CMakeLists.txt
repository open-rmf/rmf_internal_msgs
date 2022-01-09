cmake_minimum_required(VERSION 3.5)

project(rmf_task_msgs)

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
find_package(rmf_dispenser_msgs REQUIRED)
find_package(rosidl_default_generators REQUIRED)

set(msg_files
  "msg/ApiRequest.msg"
  "msg/ApiResponse.msg"
  "msg/Assignment.msg"
  "msg/Delivery.msg"
  "msg/Behavior.msg"
  "msg/BehaviorParameter.msg"
  "msg/Station.msg"
  "msg/TaskDescription.msg"
  "msg/TaskSummary.msg"
  "msg/Tasks.msg"
  "msg/Loop.msg"
  "msg/Tow.msg"
  "msg/TaskType.msg"
  "msg/Clean.msg"
  "msg/TaskProfile.msg"
  "msg/BidNotice.msg"
  "msg/BidProposal.msg"
  "msg/BidResponse.msg"
  "msg/DispatchState.msg"
  "msg/DispatchStates.msg"
  "msg/DispatchCommand.msg"
  "msg/DispatchAck.msg"
  "msg/Priority.msg"
)

set(srv_files
  "srv/ApiService.srv"
  "srv/SubmitTask.srv"
  "srv/CancelTask.srv"
  "srv/ReviveTask.srv"
  "srv/GetDispatchStates.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${srv_files}
  ${msg_files}
  DEPENDENCIES
    builtin_interfaces
    rmf_dispenser_msgs
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
