Rails.application.routes.draw do
	# EVERY ROUTE FOR GOSSIP ON CRUD
	resources :gossips
	# EVERY ROUTE FOR USER ON CRUD EXCEPT DETRUIRE
	resources :users, except: [:destroy]
  # EVERY ROUTE FOR CITY ON CRUD EXCEPT DETRUIRE ET UPDATE
  resources :cities, except: [:destroy, :update]
  # EVERY ROUTE FOR SESSIONS ON CRUD
  resources :sessions, only: [:new, :create, :destroy]

	# HOMEPAGE
	root 'home#index'

	# ROUTE TEAM & CONTACT
	get '/team', to: 'team#presentation'
	get '/contact', to: 'contact#affichage'
	# ROUTE DYNAMIC PATH
	get '/welcome/:first_name', to: 'welcome#show_welcome'    

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
