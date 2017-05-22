json.extract! katalog, :id, :nazwa, :opis, :url, :created_at, :updated_at
json.url katalog_url(katalog, format: :json)
