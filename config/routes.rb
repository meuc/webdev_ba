Rails.application.routes.draw do
	root to: "welcome#index"
	
	resources :belts, only: [] do
		resources :techniques, only: [:index, :show]
	end
end
