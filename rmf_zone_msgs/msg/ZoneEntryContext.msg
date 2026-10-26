# Why a robot is at a zone boundary, for the zone manager to decide on.

# What kind of task brought the robot here.
uint8 TASK_UNKNOWN=0
uint8 TASK_ZONE=1
uint8 TASK_OTHER=2
uint8 task_type

# Does this robot's plan end in this zone, or cross it. About the robot, not
# the zone.
uint8 RELATION_UNKNOWN=0
uint8 RELATION_DESTINATION=1
uint8 RELATION_PASSING_THROUGH=2
uint8 zone_relation

