class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :content
      t.date :due_at
      t.boolean :private
      t.boolean :trashed
      t.integer :creator_id
      t.integer :assignee_id

      t.timestamps
    end
  end
end
