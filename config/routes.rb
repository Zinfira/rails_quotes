Rails.application.routes.draw do
  root to: 'landings#index'
  post '/token' => 'landings#create'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  as :user do
    get 'login', to: 'devise/sessions#new'
  end

end
