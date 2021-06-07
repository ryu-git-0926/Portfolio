Rails.application.routes.draw do
  devise_for :users, controllers: {
    passwords:     'users/passwords',
    registrations: 'users/registrations',
    sessions:      'users/sessions'
  }

  root 'home#top'
  get '/posts',  to: 'home#posts'

  devise_scope :user do
    get '/users/sign_out',  to: 'users/sessions#destroy'

  end
end
