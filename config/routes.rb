Rails.application.routes.draw do
  devise_for :users
  root 'home#top'
  get '/posts',  to: 'home#posts'
  devise_scope :user do
    get '/users/sign_out',  to: 'devise/sessions#destroy'
  end
end
