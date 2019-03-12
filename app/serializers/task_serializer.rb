class TaskSerializer < ActiveModel::Serializer
  attributes :id, :completed, :column_id, :user_id, :content
end
