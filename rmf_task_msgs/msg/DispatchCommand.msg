# This message is published by Task Dispatcher Node to either award or cancel a
# task for a Fleet Adapter

# The selected Fleet Adapter to award/cancel the task
string fleet_name

# The task_id of the task that
string task_id

# Unique ID of this request message
uint64 dispatch_id

# The time that this dispatch request was originally made. Dispatch requests may
# expire with an error if they get no response after an extended period of time.
builtin_interfaces/Time timestamp

# Add or Cancel a task
uint8 type
uint8 TYPE_AWARD=1   # to award a task to a fleet
uint8 TYPE_REMOVE=2  # to remove a task from a fleet
