# A confirmed booking issued by the zone supervisor. Carried inside
# ZoneState to advertise the current set of granted bookings.

# Time the booking was granted (or last refreshed).
builtin_interfaces/Time stamp

# Identity of the robot the booking belongs to.
string robot_name
string fleet_name

# Name of the zone the booking is held against.
string zone_name

# Assigned waypoint name for the booking.
string assigned_waypoint_name

# Optional desired orientation at the assigned waypoint.
bool has_orientation
float64 orientation

# Echoes the request_id of the original ZoneRequest.
string request_id

