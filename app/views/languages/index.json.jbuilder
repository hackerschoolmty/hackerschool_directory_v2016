json.array!(@languages) do |language|
  json.extract! language, :id, :name, :hacker_id
  json.url generation_hacker_languages_url(language, format: :json)
end