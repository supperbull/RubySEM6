json.extract! gist, :id, :src, :lang, :desc, :created_at, :updated_at
json.url gist_url(gist, format: :json)
