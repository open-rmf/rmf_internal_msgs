# States of tasks that are currently in the process of being dispatched
DispatchState[] active

# States of tasks that have recently finished being dispatched. This may mean
# the task was assigned or it may mean it failed to be dispatched or was
# canceled before the dispatch took place.
DispatchState[] finished
