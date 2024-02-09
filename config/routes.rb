Rails.application.routes.draw do
  resources :hotels

  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "home#index"

  get '/book_hotel/:id', to: 'home#book_hotel', as: 'book_hotel'
  
  get '/bookings', to: 'home#bookings', as: 'bookings'
  post '/create_booking', to: 'home#create_booking', as: 'create_booking'
  get '/modify_booking/:id', to: 'home#modify_booking', as: 'modify_booking'
  patch '/update_booking/:id', to: 'home#update_booking', as: 'update_booking'
  post '/cancel_booking/:id', to: 'home#cancel_booking', as: 'cancel_booking'
end
