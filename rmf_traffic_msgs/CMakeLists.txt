cmake_minimum_required(VERSION 3.5)

project(rmf_traffic_msgs)

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
  "msg/BlockadeCancel.msg"
  "msg/BlockadeCheckpoint.msg"
  "msg/BlockadeHeartbeat.msg"
  "msg/BlockadeReached.msg"
  "msg/BlockadeReady.msg"
  "msg/BlockadeRelease.msg"
  "msg/BlockadeSet.msg"
  "msg/BlockadeStatus.msg"
  "msg/Circle.msg"
  "msg/ConvexShape.msg"
  "msg/ConvexShapeContext.msg"
  "msg/Heartbeat.msg"
  "msg/Itinerary.msg"
  "msg/ItineraryClear.msg"
  "msg/ItineraryDelay.msg"
  "msg/ItineraryReached.msg"
  "msg/ItineraryExtend.msg"
  "msg/ItinerarySet.msg"
  "msg/MirrorUpdate.msg"
  "msg/ParticipantDescription.msg"
  "msg/Profile.msg"
  "msg/Region.msg"
  "msg/Route.msg"
  "msg/ScheduleChangeAdd.msg"
  "msg/ScheduleChangeAddItem.msg"
  "msg/ScheduleChangeCull.msg"
  "msg/ScheduleChangeDelay.msg"
  "msg/ScheduleChangeProgress.msg"
  "msg/NegotiationAck.msg"
  "msg/NegotiationKey.msg"
  "msg/NegotiationConclusion.msg"
  "msg/NegotiationForfeit.msg"
  "msg/NegotiationNotice.msg"
  "msg/NegotiationParticipantAck.msg"
  "msg/NegotiationProposal.msg"
  "msg/NegotiationRefusal.msg"
  "msg/NegotiationRejection.msg"
  "msg/NegotiationRepeat.msg"
  "msg/NegotiationState.msg"
  "msg/NegotiationStates.msg"
  "msg/NegotiationStatus.msg"
  "msg/NegotiationStatuses.msg"
  "msg/NegotiationTreeNode.msg"
  "msg/Participant.msg"
  "msg/Participants.msg"
  "msg/Pose2D.msg"
  "msg/ScheduleIdentity.msg"
  "msg/ScheduleInconsistency.msg"
  "msg/ScheduleInconsistencyRange.msg"
  "msg/ScheduleParticipantPatch.msg"
  "msg/SchedulePatch.msg"
  "msg/ScheduleQuery.msg"
  "msg/ScheduleQueries.msg"
  "msg/ScheduleQueryParticipants.msg"
  "msg/ScheduleQuerySpacetime.msg"
  "msg/Shape.msg"
  "msg/ShapeContext.msg"
  "msg/Space.msg"
  "msg/Timespan.msg"
  "msg/TrafficDependency.msg"
  "msg/Trajectory.msg"
  "msg/TrajectoryWaypoint.msg"
)

set(srv_files
  "srv/RegisterQuery.srv"
  "srv/RequestChanges.srv"
  "srv/RegisterParticipant.srv"
  "srv/UnregisterParticipant.srv"
)

rosidl_generate_interfaces(${PROJECT_NAME}
  ${msg_files}
  ${srv_files}
  DEPENDENCIES builtin_interfaces
  ADD_LINTER_TESTS
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
