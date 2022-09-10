# The version of the schedule node that provided this update
ScheduleIdentity node_id

# The version of the database this update provides
uint64 database_version

# The patch for the query
SchedulePatch patch

# True if this update is meant to remedy a mirror that has fallen
# out of sync
bool is_remedial_update
