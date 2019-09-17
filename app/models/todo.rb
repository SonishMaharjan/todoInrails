class Todo < ApplicationRecord
    validates :task_name, presence: true 
end
