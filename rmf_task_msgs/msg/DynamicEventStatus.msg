# Published to the topic
# rmf_dynamic_event/status/<fleet_name>/<robot_name>

# Current state of dynamic event execution for the robot associated with the
# topic that this is being published to.
uint8 dynamic_state

# There is no dynamic event running right now. Any DynamicEvent action requests
# will be rejected in this state.
uint8 DYNAMIC_STATE_INACTIVE = 0

# The dynamic event is waiting for its next command. In this state it would be
# valid to issue a DynamicEvent action request.
uint8 DYNAMIC_STATE_WAITING = 1

# The dynamic event is running a command right now. Any DynamicEvent action
# requests will be rejected in this state.
uint8 DYNAMIC_STATE_RUNNING = 2

# If the dynamic_state is DYNAMIC_STATE_RUNNING, then this will be the current
# status of the action. This string will match one of the values in the "status" schema:
# https://github.com/open-rmf/rmf_api_msgs/rmf_api_msgs/schemas/task_state.json
string status

# If the dynamic_state is DYNAMIC_STATE_RUNNING, then this will be The ID of the
# current sub-event within the dynamic event.
uint64 id

# Timestamp for when this status change occurred.
builtin_interfaces/Time time
