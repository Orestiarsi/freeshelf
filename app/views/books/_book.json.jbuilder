json.extract! book, :id, :title, :Author, :description, :url, :cover_img, :created_at, :updated_at
json.url book_url(book, format: :json)
