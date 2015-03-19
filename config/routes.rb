Rails.application.routes.draw do

	root 'welcome#index'

	resources :routes
	resources :countries
end
