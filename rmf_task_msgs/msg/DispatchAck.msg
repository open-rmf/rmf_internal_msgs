# This message is published by the fleet adapter in response to a
# DispatchRequest message. It indicates whether the requested task addition or
# cancellation was successful.

# The ID of the DispatchRequest that is being responded to
uint64 dispatch_id

# True if the addition or cancellation operation was successful
bool success

string[] errors
