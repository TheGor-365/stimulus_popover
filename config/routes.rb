Rails.application.routes.draw do
  get 'test/case'
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root "pages#home"
  get "users/:id/card", to: "users#card", as: "user_card"
end
