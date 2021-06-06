Rails.application.routes.draw do

  root to: 'pages#home'

  devise_for :users,
    controllers: {
      registrations: 'registrations'
    }

  # devise_scope :user do
  #   get '/signout', to: 'devise/sessions#destroy', as: :signout
  # end

  get 'team', to: "pages#team"
  get 'blog', to: "articles#index"

  resources :contacts, only: [:new, :create, :index]
  resources :bookings
  resources :articles
  resources :tasks

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

end
