Rails.application.routes.draw do
   devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    confirmations: 'users/confirmations'
  }
  devise_scope :user do
    get 'sign_in', to: 'devise/home#after_signup_create_profile'
  end
  get '/confirmation_pending' => 'home#after_registration_path'
  #get '/signup_profile' =>  'home#after_signup_create_profile_path'
  get '/signout' => 'home#signout'
  get '/signup_profile' => 'customer#index'
  #resources :home, only: [:index, :show]
 # get '/create_profile' => 'home#after'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'home#index'
  # Defines the root path route ("/")
  # root "articles#index"
end
