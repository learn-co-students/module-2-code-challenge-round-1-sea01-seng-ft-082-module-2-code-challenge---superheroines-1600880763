Rails.application.routes.draw do
  resources :powers#, only: [:index, :show, :create, :update, :delete]
  resources :heroines#, only: [:index, :show, :create]
  resources :heroine_powers#, only: [:index, :new, :show]  
end
