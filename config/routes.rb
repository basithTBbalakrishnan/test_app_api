Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
     resources :users
     resources  :phonenumbers
    end
  end
 devise_for :users, controllers: { sessions: :sessions },
                       path_names: { sign_in: :login }   


end
