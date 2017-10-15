Rails.application.routes.draw do
  get 'bill/new'

  post 'bill/create'
  
  post 'bill/preview'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
