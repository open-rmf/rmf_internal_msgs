
# The changes to the schedule, grouped into the different participants
ScheduleParticipantPatch[] participants

# TODO(MXG): The database will only ever report 1 cull per update. Consider
# making this a single field instead of a dynamic array.
ScheduleChangeCull[] cull

bool has_base_version
uint64 base_version
uint64 latest_version
