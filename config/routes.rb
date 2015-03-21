Rails.application.routes.draw do

	root 'welcome#index'

	resources :countries do
		resources :routes
	end

end
