# All measurements should be w.r.t. header.frame_id

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

# Bounding box of the obstacle
BoundingBox3D bbox

# 3D obstacle data that can be deserialized into an octree.
# Resolution (in m) of the smallest octree node.
float64 data_resolution

# Binary serialization of the obstacle octree
int8[] data

# The expected lifetime of the obstacle
builtin_interfaces/Duration lifetime

# Whether to add or delete the obstacle of the id provided
int32 action
int32 ACTION_ADD=1 # or modify
int32 ACTION_DELETE=2
int32 ACTION_DELETEALL=3
