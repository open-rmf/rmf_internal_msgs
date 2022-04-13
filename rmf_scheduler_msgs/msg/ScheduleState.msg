string name

# unix time in seconds
int64 last_modified

# unix time in seconds
int64 last_ran

# unix time in seconds
int64 next_run

int8 status
int8 CREATED=1
int8 STARTED=2
int8 FINISHED=3
int8 CANCELLED=4
int8 FAILED=-1
