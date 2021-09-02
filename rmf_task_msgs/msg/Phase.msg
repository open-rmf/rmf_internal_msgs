# Name of current phase
# Title must be kept within the max 12 characters limit
string title

# Detailed description of the phase - Optional
string description

###########################################################################
# Time report of the phase

# If predicted_duration is available
bool has_predicted_duration

# original prediction of the duration, this is generated
# before phase execution. Unchange once generated.
builtin_interfaces/Duration predicted_duration

# If remaining_duration is available
bool has_remaining_duration

# predicted remaining duration to complete the phase
# - pending phase: predicted_duration
# - active phase: remaining duration
# - completed phase: 0
builtin_interfaces/Duration remaining_duration

# actual runtime duration of the phase
# - pending phase: 0
# - active phase: remaining duration
# - completed phase: 0
builtin_interfaces/Duration runtime_duration

