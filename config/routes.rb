Rails.application.routes.draw do
  get 'post_images/new'
  get 'post_images/index'
  get 'post_images/show'
  root "homes#top"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :post_images, only: [:new, :create, :index, :show, :destroy]

  get "/homes/about" => "homes#about",as:'about'
end
