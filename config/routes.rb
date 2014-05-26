Rails.application.routes.draw do
  # Limit the routes that get created
  # This will not clutter rake routes with routes
  # we don't need.
  resources :users, only: [:new, :create]
end
