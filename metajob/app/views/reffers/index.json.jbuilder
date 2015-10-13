json.array!(@reffers) do |reffer|
  json.extract! reffer, :id
  json.url reffer_url(reffer, format: :json)
end
