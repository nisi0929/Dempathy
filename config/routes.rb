Rails.application.routes.draw do
  devise_for :users,
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions',
             }
  resources :users, only: %i[index show]
  devise_scope :user do
    root 'users#index'
  end
end
