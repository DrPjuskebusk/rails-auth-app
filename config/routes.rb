Rails.application.routes.draw do
  get "dashboard/index"
  root "dashboard#index"
  devise_for :users
  get "admin", to: "admin#index", as: :admin_dashboard
end

