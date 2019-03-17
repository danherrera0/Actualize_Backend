class Task < ApplicationRecord
belongs_to :user, required: false
belongs_to :column, required: false


end
