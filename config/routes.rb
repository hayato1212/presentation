Rails.application.routes.draw do
  devise_for :users
  root to: "presentations#index"
end
