class Import < ActiveRecord::Base

  has_many :todos

  def file=(file)
    SmarterCSV.process(file.path) do |array|
      Todo.create( array.first.merge({import_id: self.id}) )
    end
  end

end
