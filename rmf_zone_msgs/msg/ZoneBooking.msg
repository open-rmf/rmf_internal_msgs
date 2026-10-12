# A confirmed booking issued by the zone manager. Carried inside
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

# Orientations the robot may park at, in radians. Empty means any.
float64[] orientations

# Echoes the request_id of the original ZoneRequest.
string request_id

# The reservation ticket for the assigned vertex.
bool has_ticket
uint64 ticket_id

# The resource the ticket holds.
string ticket_resource
