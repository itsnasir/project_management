Rails.application.routes.draw do
  devise_for :users,    
    :controllers => {
      :sessions      => "sessions",
      :registrations => "registrations"
   }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :projects

  get '/' => 'homes#dashboard'


  root to: "homes#dashboard"
end
