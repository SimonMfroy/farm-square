Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users,
    controllers: {
      registrations: 'registrations'
    }

  get 'team', to: "pages#team"

  root to: 'pages#home'

  resources :contacts, only: [:new, :create]

end
