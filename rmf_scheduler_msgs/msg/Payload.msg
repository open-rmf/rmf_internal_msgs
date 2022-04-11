# Denotes the type of payload
uint8 type
uint8 PAYLOAD_TYPE_SERIALIZED_MESSAGE=1
uint8 PAYLOAD_TYPE_MULTI=101

# max 2mb
uint8[<=2097152] data
