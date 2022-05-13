# Denotes the type of payload
uint8 type
uint8 PAYLOAD_TYPE_SERIALIZED_MESSAGE=1

string topic

string message_type

# max 2mb
uint8[<=2097152] data
