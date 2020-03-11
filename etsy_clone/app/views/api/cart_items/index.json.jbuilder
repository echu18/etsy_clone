json.array! @cart_items do |cart_item|
  json.partial! "api/cart_items/cart_item", cartItem: cart_item

  json.partial! "api/products/product", product: cart_item
  json.photoUrls cart_item.photos.map { |file| url_for(file) }
end

