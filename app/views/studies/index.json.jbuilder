json.array!(@studies) do |study|
  json.extract! study, :id, :title, :text, :user_id
  json.url study_url(study, format: :json)
end
