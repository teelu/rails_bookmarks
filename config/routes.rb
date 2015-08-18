Rails.application.routes.draw do
  get '/' => 'bookmarks#index'
  get '/bookmarks' => 'bookmarks#index'
  post '/bookmarks' => 'bookmarks#create'
  patch '/bookmarks/:id' => 'bookmarks#edit'
  put '/bookmarks/:id' => 'bookmarks#edit'
  delete '/bookmarks/:id' => 'bookmarks#delete'
  get '/bookmarks/:category' => 'bookmarks#category_list'
  get '/bookmarks/favorite' => 'bookmarks#favorite'
end
