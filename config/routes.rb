Rails.application.routes.draw do
  # get 'students/index'
  # get 'students/show', to: 'students#show'
  # get 'students/destroy'
  # get 'students/update'
  # get 'students/new'
  # get 'students/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :students
    root 'students#index'
end
