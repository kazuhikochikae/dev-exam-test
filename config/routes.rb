Rails.application.routes.draw do
  get 'rentals/index'
  get 'rentals/show'
  get 'rentals/new'
  get 'rentals/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources:rentals
end
