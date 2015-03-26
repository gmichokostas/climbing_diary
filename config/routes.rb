Rails.application.routes.draw do

	root 'welcome#index'

	resources :countries do
		resources :routes, only: [:show, :create, :new]
	end

	resources :routes, only: [:index, :edit, :update, :destroy, :show]

end
