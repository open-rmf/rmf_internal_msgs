# Operator-initiated release of a zone booking.
# Intended for recovery from stuck states, NOT for routine
# operation.

# Time the release was issued.
builtin_interfaces/Time stamp

# Identity of the robot whose booking should be released.
string robot_name
string fleet_name

# Name of the zone whose booking should be released.
string zone_name
