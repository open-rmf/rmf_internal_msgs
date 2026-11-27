# A requester's full list of lanes to keep closed, for a whole fleet or one
# robot. The lane closure supervisor applies it per robot via
# RobotLaneRequest. Replaces LaneRequest.
#
# How lists combine:
# - Each scope keeps your latest list; lanes left out are released.
# - Per robot, your later list applies (fleet-wide or that robot's): a later
#   robot list can reopen your fleet-wide close for that robot, and a later
#   fleet-wide list replaces your robot lists (re-send them after it).
# - A lane stays closed while any requester's applied list holds it.
# - Holds are in memory; a supervisor restart loses them.
#
# Rules for requesters:
# - Publish RELIABLE + VOLATILE; delivery comes from your re-sends.
# - Send once your robots are in the fleet's /fleet_states.
# - The supervisor never retries. Re-send your list until, on each robot it
#   applies to, the heartbeat lists you on exactly your held lanes and
#   robot_lane_states shows them closed and released lanes open (unless
#   another requester holds them).
# - Change a list only after the last one is applied (the supervisor relies
#   on this to confirm reopens).
# - Empty requester_id or fleet_name, a bad nanosec, an older time or a
#   conflicting retry is ignored and gets no heartbeat.

# Later than your latest message for this fleet, any scope, and kept after an
# empty list. Reuse it only to retry that exact message. nanosec < 1e9.
builtin_interfaces/Time request_time

# Your ROS node name, the same across restarts
string requester_id

# Fleet whose nav graph the lanes refer to
string fleet_name

# One robot, or empty for every robot in the fleet's /fleet_states. A robot
# that appears later gets the list on your next re-send.
string robot_name

# Nav graph lane indices; lanes not in the graph stay held but never close
uint64[] closed_lanes
