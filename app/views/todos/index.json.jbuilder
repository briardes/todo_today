json.array!(@todos) do |todo|
  json.extract! todo, :id, :name, :due_date, :completed
  json.url todo_url(todo, format: :json)
end
