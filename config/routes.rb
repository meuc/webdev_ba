Rails.application.routes.draw do
  root to: "welcome#index"

  resources :belts, only: [] do
    resources :techniques, only: [:index, :show]
  end

  namespace :admin do
    resources :users, only: [:index] do
      patch :give_user_next_belt
    end
  end
end
