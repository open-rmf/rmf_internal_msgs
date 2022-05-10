# Standard header
std_msgs/Header header

# An id for this specific message. This will be used for deletion.
int32 id

# Unique identifier of the publisher of this message.
string source

# The level on which this obstacle exists
string level_name

# A classification label for the detected obstacle. (human, chair, etc)
string classification

# 3D representation of the obstacle
ObstacleData data

# The expected lifetime of the obstacle
builtin_interfaces/Duration lifetime

# Whether to add or delete the obstacle of the id provided
int32 action
int32 ACTION_ADD=1 # or modify
int32 ACTION_DELETE=2
int32 ACTION_DELETEALL=3
