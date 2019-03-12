class ColumnSerializer < ActiveModel::Serializer
  attributes :id, :title, :column_name, :task_ids
end
