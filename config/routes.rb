Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users
  root "users#home"
  resource :skills
  resources :locations
  resources :user_exps

#post "/users/password" => "devise/passwords#create" ,as: "changepassword"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
