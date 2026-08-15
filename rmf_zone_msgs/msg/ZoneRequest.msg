# Sent by a fleet adapter to the zone supervisor to request entry into or
# exit from a named zone.

# Identity of the robot making the request.
string robot_name
string fleet_name

# Unique ID for this request.
string request_id

# Name of the zone the robot wants to enter or exit.
string zone_name

# request_type:
# ENTRY  = robot is asking to claim a slot inside the zone.
# EXIT   = robot is releasing a slot it currently holds.
uint8 ENTRY=0
uint8 EXIT=1
uint8 request_type

# Optional hints carried from the task description (group preferences,
# orientation hint, preferred internal vertices).
ZoneModifiers modifiers
