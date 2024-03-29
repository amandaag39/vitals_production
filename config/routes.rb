Rails.application.routes.draw do
  devise_for :users

  # Define the chart route above the resources declaration
  get 'vitals/chart/:vital_id', to: 'vitals#chart', as: :vital_chart

  resources :vitals
  resources :readings

  # Defines the root path route ("/")
  root "welcome#index"
end
