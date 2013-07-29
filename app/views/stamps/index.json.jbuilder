json.array!(@stamps) do |stamp|
  json.extract! stamp, :Title, :Description, :Price
  json.url stamp_url(stamp, format: :json)
end
