json.array!(@books) do |book|
  json.extract! book, :id, :title, :auther, :description, :amazon_id, :rating, :finished_on
  json.url book_url(book, format: :json)
end
