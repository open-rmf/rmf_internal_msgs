# One preference in a ZoneRequest: which vertex, and facing which way.
# Name a group, or a waypoint, or neither to accept any vertex in the zone.

# Preferred internal-vertex group. Empty if a waypoint is named, or if any
# vertex is acceptable.
string group_hint

# Preferred internal vertex. Empty if a group is named, or if any vertex is
# acceptable.
string waypoint_hint

# Orientations the robot may park at, in radians. Empty means any.
float64[] orientation_hints
