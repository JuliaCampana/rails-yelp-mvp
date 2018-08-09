Rails.application.routes.draw do
  root to: "restaurants#index"

  resources :restaurants do
    resources :reviews
    # only: [:index, :new, :create]
  end

  # resources :reviews, only: [:edit, :update, :destroy, :show]

end
