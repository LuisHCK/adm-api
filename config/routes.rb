Rails.application.routes.draw do
  resources :cashes
  resources :services
  resources :sales
  resources :summaries
  resources :users
  root 'home#index'

	constraints subdomain: 'api' do
	  scope module: 'api' do
	    namespace :v1 do
	      resources :users
	    end
	  end
	end

end
