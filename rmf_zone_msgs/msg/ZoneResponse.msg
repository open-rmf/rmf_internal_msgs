# One response from the zone manager to one robot, carried inside ZoneState.
# Grants, refusals, go-aheads and revocations all ride here, so a robot has
# a single place to look for how its request was handled.

# Time the response was issued.
builtin_interfaces/Time stamp

# Echoes the request_id of the ZoneRequest being answered. For REVOKED it
# is the id the booking was granted under, since no request is being
# answered.
string request_id

# Identity of the robot being answered.
string robot_name
string fleet_name

# The zone this response is about.
string zone_name

# status:
# REJECTED = the request cannot be granted, see reason.
# GRANTED  = a vertex in the zone is assigned to the robot, named below.
# PROCEED  = the robot may enter the zone, but nothing is held for it, so
#            it carries on with the plan it already has. Sent when the
#            robot needs no booking of its own.
# REVOKED  = a booking already granted has been taken back, see reason.
uint8 REJECTED=0
uint8 GRANTED=1
uint8 PROCEED=2
uint8 REVOKED=3
uint8 status

# The waypoint this response is about, for GRANTED and REVOKED. Empty
# otherwise.
string assigned_waypoint_name

# Human-readable explanation, for REJECTED and REVOKED. Intended for logs
# and operator UIs.
string reason
