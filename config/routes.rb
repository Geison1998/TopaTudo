Rails.application.routes.draw do
  resources :add_user_to_posts
  devise_for :users
  resources :posts
  root 'posts#homepage'

  resources :posts do
    collection do
        get 'homepage'
        post 'homepage'
      end
  end
end
