
uint8 STATUS_UNINITIALIZED = 0
uint8 STATUS_QUEUED = 1
uint8 STATUS_SELECTED = 2
uint8 STATUS_DISPATCHED = 3
uint8 STATUS_FAILED_TO_ASSIGN = 4
uint8 STATUS_CANCELED_IN_FLIGHT = 5

string task_id
int8 status
Assignment assignment
string[] errors
