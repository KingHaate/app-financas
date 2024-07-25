Rails.application.routes.draw do
  devise_for :usuarios
  resources :movimentacoes, only: [:index, :new, :create, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check

  root "movimentacoes#index"
end
