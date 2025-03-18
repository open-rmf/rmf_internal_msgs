# This is a ROS message definition that matches the log_entry.json schema:
# https://github.com/open-rmf/rmf_api_msgs/blob/main/rmf_api_msgs/schemas/log_entry.json

# Sequence number for this entry. Each entry has a unique sequence number which
# monotonically increase, until integer overflow causes a wrap around.
uint32 seq

# The importance level of the log entry. Must be one of:
# * TIER_UNINITIALIZED
# * TIER_INFO
# * TIER_WARNING
# * TIER_ERROR
string tier

string TIER_UNINITIALIZED = "uninitialized"
string TIER_INFO = "info"
string TIER_WARNING = "warning"
string TIER_ERROR = "error"

# The timestamp of this log entry in the number of milliseconds since the beginning
# of the Unix epoch. We use this instead of builtin_interfaces/Time to perfectly
# match the log_entry.json schema.
int64 unix_millis_time

# The text of the log entry
string text
