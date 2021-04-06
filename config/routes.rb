Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users,
    controllers: {
      registrations: 'registrations'
    }
  devise_scope :user do 
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  get 'team', to: "pages#team"

  root to: 'pages#home'

  resources :tasks
  resources :bookings
  resources :contacts, only: [:new, :create]

end