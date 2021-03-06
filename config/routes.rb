Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'root#top'
  resources :events, only:[:new, :create, :index, :show, :edit, :update, :destroy] do
  	resource :post_comments, only: [:create, :destroy]
  	resource :participates, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
end
