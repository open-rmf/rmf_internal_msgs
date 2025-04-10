# Specify a list of fleet names who should respond to this change in the
# emergency signal. If there is one or more entry in this list, then any
# fleets which are not listed will ignore the message.
#
# If this list is completely empty, then all fleets will respond to the
# emergency signal.
string[] fleet_names

# True if the relevant fleets should be carrying out their emergency behavior.
# False if the relevant fleets should carry about their normal business.
bool is_emergency
