Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root to: 'pages#index'

  # Defines the root path route ("/")
  # root "articles#index"
  patch "tasks/:id/mark_as_finished", to: "tasks#mark_as_finished", as: :mark_as_finished
  resources :tasks
  get '/all-tasks', to: "pages#tasks"
  get '/new-task', to: "tasks#new"
end
