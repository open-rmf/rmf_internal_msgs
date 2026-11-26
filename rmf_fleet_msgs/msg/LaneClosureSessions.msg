# The requesters holding one lane for one robot

# Fleet whose nav graph lane_index refers to
string fleet_name

# Robot the lane is held for; never empty (a fleet-wide hold is listed under
# each robot)
string robot_name

# The held lane
uint64 lane_index

# Its holders
LaneClosureSession[] sessions
