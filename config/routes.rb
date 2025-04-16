Rails.application.routes.draw do
  # 自動で作ってくれたけど、resourcesで一括したいのでコメントアウト
  # get 'users/show'
  # get 'users/edit'
  # これが変わりのコード
  resources :users, only: [:show, :edit]

  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  devise_for :users
  root to: "homes#top"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # # 
  # root to: "homes#about"
  get '/homes/about' => 'homes#about', as: "about"
  # #
end


