json.array! @products do |product|
  json.partial! "api/products/product", product: product
  json.photoUrls product.photos.map { |file| url_for(file) }
end


# json.products do 
#   json.array! @products do |product|
#     json.partial! 'api/products/product', product: product
#     json.photoUrls @product.photos.map { |file| url_for(file) }
#   end
# end

# json.products do 
#     json.set! @product.id do 
#         json.par∑tial! 'api/products/product', product: @product
#         json.photoUrls @product.photos.map { |file| url_for(file) }
#     end
# end
