
# Task.create( tasks_name:{'task-4': {task_id: "task-4", completed:false, column_id: 6, user_id: 1, content:"placeholder"}})

# Task.create( tasks_name:{ 'task-2': {task_id: "task-2", completed:false, column_id: 6, user_id: 1, content:"testing 2"}})
#
# Task.create( tasks_name:{ 'task-3': {task_id: "task-3", completed:false, column_id: 6, user_id: 1, content:"testing 3"}})

Column.create(id:1, title: "To do", task_ids:[])
Column.create(id:2, title: "To do", task_ids:[])
Column.create(id:3, title: "To do", task_ids:[])



Task.create(completed:false, column_id: nil, user_id:1, content:"test1")
Task.create(completed:false, column_id: nil, user_id:1, content:"test2")
Task.create(completed:false, column_id: nil, user_id:1, content:"test3")
