Rails.application.routes.draw do

  # create rousources in subdomain api
  namespace :api, path: '/', constraints: { subdomain: 'api' } do
    resources :users
  end

end