Rails.application.routes.draw do

  root to: 'static_pages#index'

  namespace :api, defaults: { format: :json } do
    resources :todos, except: %i(new edit)
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
