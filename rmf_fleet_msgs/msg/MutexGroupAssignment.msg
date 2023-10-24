# This message maps a mutex group name to the name of an agent that is currently
# holding the claim to that group.

# Name of the mutex group that is being described.
string group

# Name of the agent that has currently claimed the group.
# If the group is unclaimed, this will be an empty string.
string claimed
