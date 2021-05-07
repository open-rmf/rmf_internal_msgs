# level of the phase tree, from 1, 2....n
int32 tree_level

# type of the current phase
uint32 current_phase

# type of the remaining phases
uint32[] pending_phases

# completed phases type 
uint32[] completed_phases

uint32 PHASE_GOTOPLACE=1
uint32 PHASE_MOVEROBOT=2
uint32 PHASE_OPENDOOR=3
uint32 PHASE_CLOSEDOOR=4
uint32 PHASE_INGESTITEM=5
uint32 PHASE_DISPENSEITEM=6
uint32 PHASE_DOCKROBOT=7
uint32 PHASE_WAITFORCHARGE=8
uint32 PHASE_REQUESTLIFT=9
uint32 PHASE_ENDLIFTSESSION=10
uint32 PHASE_RESPONSIVEWAIT=11

