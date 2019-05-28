Rails.application.routes.draw do
  root to: 'pages#home'

  resources :pubs, only: %i[index new create]
end
