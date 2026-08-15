# Optional modifiers for waypoint selection carried inside a ZoneRequest.

# Name of a preferred internal-vertex group within the zone. Empty string
# means "no preference".
string group_hint

# Optional preferred orientation at the assigned waypoint.
bool has_orientation_hint
float64 orientation_hint

# Ordered list of internal-vertex names the requester would prefer, most
# preferred first. Empty list means "no preference".
string[] preferred_waypoints
