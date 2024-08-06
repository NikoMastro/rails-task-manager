Rails.application.routes.draw do
  # http_verb '/path', to: 'controller#action', as: :prefix
  # prefix is ONLY connected to the path (not the verb)
  get '/tasks', to: 'tasks#index', as: :tasks

  get '/tasks/new', to: 'tasks#new', as: :new_task
  post '/tasks', to: 'tasks#create'

  get '/tasks/:id', to: 'tasks#show', as: :task

  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # destroy
  delete '/tasks/:id', to: 'tasks#destroy'
end
