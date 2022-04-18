# Name to identify the trigger, must be unique across all triggers.
string name

# unix timestamp in seconds
int64 created_at

# unix timestamp in seconds when the trigger should run
int64 at

string group "default"

Payload payload
