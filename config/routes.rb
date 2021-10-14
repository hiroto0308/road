Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  devise_scope :user do
   post '/users/guest_sign_in', to: 'users/sessions#guest_sign_in'
  end
   root to: 'static_pages#top'
  resources :rooads do
    collection do
      get 'search'
    end
  end  
  post 'like/:id' => 'likes#create', as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'
  
end
