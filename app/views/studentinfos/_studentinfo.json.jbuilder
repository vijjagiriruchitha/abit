json.extract! studentinfo, :id, :created_at, :updated_at
json.url studentinfo_url(studentinfo, format: :json)
