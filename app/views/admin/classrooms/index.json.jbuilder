json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :teacher, :user_id
  json.url classroom_url(classroom, format: :json)
end
