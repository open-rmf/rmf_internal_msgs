# Event-driven snapshot broadcast from the zone supervisor. Published
# whenever the supervisor's booking state changes (a new booking granted,
# a request rejected, a booking released).

# Time the snapshot was published
builtin_interfaces/Time stamp

# All bookings currently held by robots, across all zones.
ZoneBooking[] bookings

# Rejections associated with this state change.
ZoneRejection[] rejected
