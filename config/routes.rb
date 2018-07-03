Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
	 root 'application#hello'
	 
  # create rousources in subdomain api
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :users

  end

end