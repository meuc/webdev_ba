Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
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
