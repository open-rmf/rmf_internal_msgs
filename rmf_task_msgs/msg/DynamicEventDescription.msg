# Published to both of the topics:
# rmf/dynamic_event/begin
# rmf/dynamic_event/begin/<fleet_name>/<robot_name>

# Name of the fleet of the robot beginning the dynamic event.
string fleet

# Name of the robot beginning the dynamic event.
string robot

# The sequence number for this dynamic event. This is unique for each run of a
# dynamic event within one robot.
#
# Each new run of a dynamic event for a robot will increment this value until it
# reaches integer overflow and goes back to 0.
uint32 dynamic_event_seq

# Full JSON description of the dynamic event, including the estimate field
# and any custom fields put in by the task request.
string description

# What time the dynamic event started.
builtin_interfaces/Time start_time
