json.array!(@todos) do |todo|
  json.extract! todo, :id, :content, :due_at, :private, :trashed, :creator_id, :assignee_id
  json.url todo_url(todo, format: :json)
end
