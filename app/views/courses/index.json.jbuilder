json.array!(@courses) do |course|
  json.extract! course, :id, :name, :generation_id
  json.url course_url(course, format: :json)
end
