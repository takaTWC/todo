Rails.application.routes.draw do
  root to: 'homes#top'
  devise_for :users

  resources :users
  resources :lists do
    member do
      patch :complete
    end
  end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
