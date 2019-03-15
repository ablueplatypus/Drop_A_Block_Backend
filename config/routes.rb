Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
        resources :users, :stats, only: [:index, :create]
        # post 'user/login', to: 'users#login', as: 'loggin_page'
        get '/', to: 'stats#index', as: 'heroku_home'
      end
    end

end
