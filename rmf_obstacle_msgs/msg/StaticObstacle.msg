# Static obstacle within RMF represented as an Octree

# Standard header
std_msgs/Header header

# Unique identifier of the publisher of this message.
string source

# An id for this specific message. This will be used for deletion.
int32 id

# Resolution (in m) of the smallest octree node.
# The resolution is standardized within RMF
float64 RESOLUTION=0.01

# Binary serialization of octree.
int8[] data

# optional label for obstacle. (human, chair, etc)
string classification

# optional lifetime of the obstacle
builtin_interfaces/Duration lifetime

# Whether to add or delete the obstacle of the id provided
int32 action
int32 ACTION_ADD=1
int32 ACTION_DELETE=2
