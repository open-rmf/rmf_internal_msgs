# Published to both of the topics:
# rmf_dynamic_event/begin
# rmf_dynamic_event/begin/<fleet_name>/<robot_name>

# Name of the fleet of the robot beginning the dynamic event.
string fleet

# Name of the robot beginning the dynamic event.
string robot

# Full JSON description of the dynamic event, including the estimate field
# and any custom fields put in by the task request.
string description

# What time the dynamic event started.
builtin_interfaces/Time start_time
