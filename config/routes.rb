Rails.application.routes.draw do
	# EVERY ROUTE FOR GOSSIP ON CRUD
  # ROUTE HOME PAGE
  root 'home#index'
	# EVERY ROUTE FOR GOSSIPS ON CRUD
	resources :gossips
	# EVERY ROUTE FOR USER ON CRUD EXCEPT DETRUIRE
	resources :users, except: [:destroy]
  # EVERY ROUTE FOR CITY ON CRUD EXCEPT DETRUIRE ET UPDATE
  resources :cities, except: [:destroy, :update]
  # EVERY ROUTE FOR SESSIONS ON CRUD
  resources :sessions, only: [:new, :create, :destroy]
	# ROUTE TEAM WITH ONLY THE ROUTE INDEX -> /TEAM
  resources :team, only: [:index]

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
