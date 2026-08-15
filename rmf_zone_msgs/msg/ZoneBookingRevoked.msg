# Sent by the zone supervisor when an existing ZoneBooking is being taken
# back from a robot before the robot has voluntarily released it (e.g.
# because of a ZoneManualRelease, a supervisor restart, or an internal
# consistency error).

# Time the revocation was issued.
builtin_interfaces/Time stamp

# Identity of the robot whose booking is being revoked.
string robot_name
string fleet_name

# Name of the zone the revoked booking was held against.
string zone_name

# Assigned waypoint name for the revoked booking.
string assigned_waypoint_name

# Human-readable explanation of why the booking was revoked. Intended for
# logs and operator UIs.
string reason
