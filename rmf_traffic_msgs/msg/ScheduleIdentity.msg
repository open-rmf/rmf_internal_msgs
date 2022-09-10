# The UUID of the new schedule node
# TODO(MXG): Consider using uuid_msgs here: https://github.com/ros-geographic-info/unique_identifier/blob/master/uuid_msgs/msg/UniqueID.msg
string node_uuid

# The time that the new schedule node was started. In the event that multiple
# schedule nodes have been started, the one with the newest timestamp will be
# considered the active node, and the rest of the nodes will shut down.
builtin_interfaces/Time timestamp
