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
  root 'concourses#index'
  post '/signup',  to: 'administrators#create'
  get  '/signup',  to: 'administrators#new'
  get  '/listconcourse',  to: 'concourses#new'
  post   '/login',   to: 'sessions#create'
  post '/create_concourses',  to: 'concourses#create'
  delete '/logout',  to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
