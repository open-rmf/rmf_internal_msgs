# Sent by a fleet adapter to the zone manager to claim a waypoint inside a
# named zone, to give one up, or to hand one back after a re-assignment.
# The manager is the only reader.

# Identity of the robot making the request.
string robot_name
string fleet_name

# Unique ID for this request. The manager echoes it in the ZoneState it
# publishes, which is how a robot picks its own answer out of the log.
string request_id

# The zone this request is about.
string zone_name

# request_type. The first four are the order a booking goes through:
# PREBOOKING = claim a waypoint in the zone, before the robot sets off.
# ENTRY      = at the zone entrance, confirm or improve the booked vertex.
# ARRIVED    = the robot has arrived at its booked waypoint.
# EXIT       = the robot has left the zone and released its booking.
# HANDBACK   = hand `released_waypoint`'s ticket back without releasing it.
#
uint8 PREBOOKING=0
uint8 ENTRY=1
uint8 ARRIVED=2
uint8 EXIT=3
uint8 HANDBACK=4
uint8 request_type

# Ordered preferences carried from the task description, most preferred
# first. Empty means no preference.
ZoneHint[] hints

# The vertex being handed back, for request_type HANDBACK. Empty otherwise.
string released_waypoint

# The context on why this robot is here.
ZoneEntryContext entry_context
