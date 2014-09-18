class AddImportIdToTodos < ActiveRecord::Migration
  def change
    add_reference :todos, :import, index: true
  end
end
