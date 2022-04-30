Rails.application.routes.draw do
  resources :admin_posts
  devise_for :users,
             controllers: {
               registrations: 'users/registrations',
               sessions: 'users/sessions',
             }
  devise_scope :user do
    root 'users#index'
  end
  resources :users, only: %i[index show] do
    member do
      delete :destroy_by_admin
      patch :change_suitable
    end
    collection { get :administrator }
  end
end
