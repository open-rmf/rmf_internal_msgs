# ID of the task that is being bid on
string task_id

# True if this response contains a proposal
bool has_proposal

# The proposal of this response, if has_proposal is true
BidProposal proposal

# Any errors related to this bid
string[] errors
