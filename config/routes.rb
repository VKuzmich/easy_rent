Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users,
             path: '',
             path_names: {sign_in: 'login', sign_out: 'logout', edit: 'profile'},
             controllers: {omniauth_callbacks: 'omniauth_callbacks',
                           registrations: 'registrations'}

  resources :users, only: [:show]
end
