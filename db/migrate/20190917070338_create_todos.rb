class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :task
      t.text :description
      t.timestamp :created_at
      t.boolean :status
      t.time :time_required

      t.timestamps
    end
  end
end
