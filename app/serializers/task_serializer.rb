class TaskSerializer < ActiveModel::Serializer
  attributes :tasks_name, :id, :completed, :column_id, :user_id, :content, :tasks_name, :task_id

end
