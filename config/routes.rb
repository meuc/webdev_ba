Rails.application.routes.draw do
  root to: "welcome#index"

  resources :belts, only: [] do
    resources :techniques, only: [:index, :show]
  end

  namespace :admin do
    resources :users, only: [:index] do
      patch :give_user_next_belt
    end

    resources :techniques, only: [:index, :new, :create, :edit, :update]

    resources :belt_applications, only: [:index, :destroy] do
      member do
        post :approve
      end
    end
  end

  resources :belt_applications, only: [:new, :create]
end
