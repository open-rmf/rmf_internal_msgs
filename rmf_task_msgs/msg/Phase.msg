# Name of current phase
# Title must be kept within the max 12 characters limit
string title

# Detailed description of the phase - Optional
string description

# if the duration field below is valid
bool has_duration

# pending phase: Expected total duration of the phase
# active phase: Expected remaining time in the phase
# completed phase: How long the phase actually took
builtin_interfaces/Duration duration

