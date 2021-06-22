Rails.application.routes.draw do
  root 'chatroom#index'
  get 'login' , to: 'sessions#new'
<<<<<<< HEAD
  post 'login' , to: 'sessions#create'
  delete 'logout' , to: 'sessions#destroy'

=======
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
>>>>>>> feature
end
