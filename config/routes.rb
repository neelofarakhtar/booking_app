Rails.application.routes.draw do
  devise_for :users
  resources :users
  resources :movies
  root "users#index"
  # get 'movies'  => 'movies#index', as: :movies
  # get 'movies/:id'  => 'movies#show', as: :movies_show
  # post 'movie'  => 'movies#create'
  get 'bookings'    => 'users#booking', as: :bookings
  get 'bookings/:id/cancel'    => 'users#cancel_booking', as: :cancel_bookings
  get 'book/:screening_id' => 'users#book', as: :book
end
