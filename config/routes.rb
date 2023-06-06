Rails.application.routes.draw do
  get 'people/index'
  get 'people/new'
  get 'people/show'
  get 'people/edit'

  resources :people
end
