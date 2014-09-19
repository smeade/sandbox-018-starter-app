class Import < ActiveRecord::Base

  has_many :todos

  def file=(file)
    SmarterCSV.process(file.path) do |array|
      Todo.create( array.first.merge({import_id: self.id}) )
    end
  end

end

# == Schema Information
#
# Table name: imports
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#
