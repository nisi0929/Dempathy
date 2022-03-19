Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users,
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions',
             }
  resources :users, only: %i[index show]
  devise_scope :user do
    root 'users/registrations#new'
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
