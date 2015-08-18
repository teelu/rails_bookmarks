Rails.application.routes.draw do
  get '/' => 'bookmarks#index'
  get '/bookmarks' => 'bookmarks#index'
  post '/bookmarks' => 'bookmarks#create'
  patch '/bookmarks/:id' => 'bookmarks#update'
  put '/bookmarks/:id' => 'bookmarks#update'
  delete '/bookmarks/:id' => 'bookmarks#delete'
  get '/bookmarks/category/:category' => 'bookmarks#category_list'
  get '/favorite' => 'bookmarks#favorite'
end
