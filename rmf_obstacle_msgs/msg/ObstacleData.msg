# Bounding box of the obstacle
vision_msgs/BoundingBox3D box

# Obstacle data represented as an Octree
# Resolution (in m) of the smallest octree node.
# The resolution is standardized within RMF
float64 RESOLUTION=0.1

# Binary serialization of octree in RMF global coordinates
int8[] data
