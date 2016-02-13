json.array!(@courses) do |course|
  json.extract! course, :id, :name, :generation_id
  json.url generation_course_url(@generation, course, format: :json)
end
