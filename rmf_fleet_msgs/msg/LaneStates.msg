# The name of the fleet with closed or speed limited lanes
string fleet_name

# Lanes closed for every robot (fleet-wide). Per-robot ones are in
# robot_lane_states.
uint64[] closed_lanes

# Lanes that have speed limits
SpeedLimitedLane[] speed_limits

# Per-robot lanes, on top of the fleet-wide ones: each robot with at least
# one, once. An unlisted robot has none. (New field: rebuild every user.)
RobotLaneState[] robot_lane_states
