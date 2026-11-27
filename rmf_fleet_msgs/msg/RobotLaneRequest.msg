# Opens or closes lanes for one robot. Sent by the lane closure supervisor,
# one per robot. A lane in both lists invalidates the request. Lanes not in
# the fleet's graph are skipped; the rest are applied.

# Fleet the robot belongs to
string fleet_name

# Robot the change applies to
string robot_name

# Lanes to open
uint64[] open_lanes

# Lanes to close
uint64[] close_lanes
