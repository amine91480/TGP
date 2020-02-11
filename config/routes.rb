Rails.application.routes.draw do
	# EVERY ROUTE  GOSSIP
	resources :gossips
	# EVERY ROUTE USER
	resources :users

	# HOMEPAGE
	root 'home#index'

	# ROUTE TEAM & CONTACT
	get '/team', to: 'team#presentation'
	get '/contact', to: 'contact#affichage'

	# ROUTE DYNAMIC PATH
	get '/welcome/:first_name', to: 'welcome#show_welcome'    


	
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
