# Lanes held for each robot and who holds them: each requester's applied list
# (fleet-wide or robot, whichever is later). Robots come from /fleet_states
# and from robot requests; a held lane may not be closed yet. Published at
# startup and after every accepted request, including retries.
LaneClosureSessions[] all_sessions
