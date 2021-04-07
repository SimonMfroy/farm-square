Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  root to: 'pages#home'

  devise_for :users,
    controllers: {
      registrations: 'registrations'
    }
  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end

  get 'team', to: "pages#team"
  get 'blog', to: "articles#index"

  resources :articles, except: [:index, :show]
  resources :contacts, only: [:new, :create]
  resources :bookings
  resources :tasks

end
