# The zone manager's booking log, plus any responses that ride this publish.
# Published whenever something changes that a waiting robot may care about:
# a booking granted, changed at a zone boundary, handed back, released or
# revoked, a request refused or given a go-ahead with no booking, or a
# reservation arriving from the reservation node that makes a vertex
# assignable. There is no periodic publisher.
#
# Every message carries the whole booking log rather than a delta.

# Time the snapshot was published
builtin_interfaces/Time stamp

# All bookings currently held by robots, across all zones.
ZoneBooking[] bookings

# Each entry is the zone manager's reply to one robot about one request,
# saying how it was handled: refused, granted a vertex, let in with nothing
# held, or a booking taken back.
ZoneResponse[] responses
