Myflix::Application.routes.draw do
  root to: "videos#index"

  resources :videos, except: [:destroy] do
  	collection do
  		get "search", to: "videos#search"
  	end
  end		
end
