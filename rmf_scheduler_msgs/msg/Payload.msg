string message_type
string topic_name

# Denotes the type of payload
uint16 type
uint16 SERIALIZED_MESSAGE=1

# max 2mb
uint8[<=2097152] data
