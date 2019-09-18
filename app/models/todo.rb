class Todo < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :task_name, presence: true 
end
