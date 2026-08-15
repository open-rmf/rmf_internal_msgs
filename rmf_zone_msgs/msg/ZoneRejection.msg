# Sent by the zone supervisor when a ZoneRequest cannot be granted.
# Carried inside ZoneState alongside the current set of bookings.

# Identity of the robot whose request was rejected.
string robot_name
string fleet_name

# Echoes the request_id of the original ZoneRequest.
string request_id

# Name of the zone the rejected request was targeting.
string zone_name

# Human-readable explanation of why the request was rejected (zone full,
# zone unknown, conflicting booking, etc.)
string reason
