# Name to identify the schedule, must be unique across all schedules.
string name

# unix timestamp in seconds
int64 created_at

# ┌─────────────seconds (0 - 59)
# │ ┌───────────── minute (0 - 59)
# │ │ ┌───────────── hour (0 - 23)
# │ │ │ ┌───────────── day of the month (1 - 31)
# │ │ │ │ ┌───────────── month (1 - 12)
# │ │ │ │ │ ┌───────────── day of the week (0 - 6) (Sunday to Saturday)
# │ │ │ │ │ │ ┌───────────── years (1970 - 2099) (optional)
# │ │ │ │ │ │ │
# * * * * * * *
# 
# | Field | Required | Allowed value | Allowed special characters |
# | --- | --- | --- | --- |
# | seconds | yes | 0-59 | `*` `,` `-` |
# | minutes | yes | 0-59 | `*` `,` `-` |
# | hours | yes | 0-23 | `*` `,` `-` |
# | days of month | 1-31 | `*` `,` `-` `?` `L` `W` |
# | months | yes | 1-12 | `*` `,` `-` |
# | days of week | yes | `*` `,` `-` `?` `L` `#` |
# | years | no | 1970-2099 | `*` `,` `-` |
# 
# The special characters have the following meaning:
# 
# | Special character | Meaning | Description |
# | --- | --- | --- |
# | `*` | all values | selects all values within a field |
# | `?` | no specific value | specify one field and leave the other unspecified |
# | `-` | range | specify ranges |
# | `,` | comma | specify additional values |
# | `/` | slash | speficy increments |
# | `L` | last | last day of the month or last day of the week |
# | `W` | weekday | the weekday nearest to the given day |
# | `#` | nth |  specify the Nth day of the month |
# Examples: 
# 
# | CRON | Description |
# | --- | --- |
# | * * * * * * | Every second |
# | */5 * * * * ? | Every 5 seconds |
# | 0 */5 */2 * * ? | Every 5 minutes, every 2 hours |
# | 0 */2 */2 ? */2 */2 | Every 2 minutes, every 2 hours, every 2 days of the week, every 2 months |
# | 0 15 10 * * ? * | 10:15 AM every day |
# | 0 0/5 14 * * ? | Every 5 minutes starting at 2 PM and ending at 2:55 PM, every day |
# | 0 10,44 14 ? 3 WED | 2:10 PM and at 2:44 PM every Wednesday of March |
# | 0 15 10 ? * MON-FRI | 10:15 AM every Monday, Tuesday, Wednesday, Thursday and Friday |
# | 0 15 10 L * ? | 10:15 AM on the last day of every month |
# | 0 0 12 1/5 * ? | 12 PM every 5 days every month, starting on the first day of the month |
# | 0 11 11 11 11 ? | Every November 11th at 11:11 AM |
# 
# Reference: https://github.com/mariusbancila/croncpp/blob/999f7685ab683b58872386c0aa019acf97c6570a/README.md
string schedule

# unix time in secs
int64 start_at

# unix time in secs
int64 finish_at 9223372036854775807

string group "default"

Payload payload
