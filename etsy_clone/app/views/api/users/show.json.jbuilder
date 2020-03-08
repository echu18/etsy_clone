# json.users do 
#     json.set! @user.id do
#         json.partial! 'api/users/user', user: @user
#         json.photoUrls @user.photos.map { |file| url_for(file) }
#     end
# end


json.partial! 'api/users/user', user: @user
       