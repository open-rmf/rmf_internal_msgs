uint8 IMMEDIATELY_PROCEED=0
uint8 WAIT_AT_SPOT_AND_THEN_GO=1
uint8 WAIT_PERMANENTLY=2

rmf_chope_msgs/Ticket ticket

uint8 instruction_type
uint64 satisfies_alternative
string resource
builtin_interfaces/Time time_to_reach
