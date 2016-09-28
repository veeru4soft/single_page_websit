json.array!(@styling_pages) do |styling_page|
  json.extract! styling_page, :id, :font, :color, :title
  json.url styling_page_url(styling_page, format: :json)
end
