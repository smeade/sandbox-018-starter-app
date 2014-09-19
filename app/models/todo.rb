class Todo < ActiveRecord::Base

  belongs_to :import

end

# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  content     :string(255)
#  due_at      :date
#  private     :boolean
#  trashed     :boolean
#  creator_id  :integer
#  assignee_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#  import_id   :integer
#  completed   :boolean
#
