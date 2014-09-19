class AddUserToImports < ActiveRecord::Migration
  def change
    add_reference :imports, :user, index: true
  end
end
