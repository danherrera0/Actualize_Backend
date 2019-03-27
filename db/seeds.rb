
User.create(firstName:"TestUser", lastName:"1", email:"test@email.com", username:"TestUser")

Column.create(id:1, title: "To Do", task_ids:[])
Column.create(id:2, title: "In Progress", task_ids:[])
Column.create(id:3, title: "Done", task_ids:[])

Task.create(id: 1, completed:false, column_id: 1, user_id:1, content:"Add a task")
Task.create(id: 2, completed:false, column_id: 2, user_id:1, content:"delete a task")
Task.create(id: 3, completed:true, column_id: 3, user_id:1, content:"drag a task to the 'Done' column")
