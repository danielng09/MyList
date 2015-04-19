Rails.application.routes.draw do
  get 'about' => 'static_pages#about'
  resources :posts
  root to: "posts#index"
end
