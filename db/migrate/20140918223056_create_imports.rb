class CreateImports < ActiveRecord::Migration
  def change
    create_table :imports do |t|
      t.string :title

      t.timestamps
    end
  end
end
