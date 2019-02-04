Rails.application.routes.draw do
  get 'users/new'
  get 'concourses/new'
  get 'administrators/new'
  get    '/login',   to: 'sessions#new'
  get 'sessions/new'
  get 'administrators/new'
  get 'sessions/new'
  resources :administrators
  resources :concourses
  root 'administrators#new'
  post '/signup',  to: 'administrators#create'
  get  '/signup',  to: 'administrators#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
