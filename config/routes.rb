Myapp::Application.routes.draw do
  devise_for :users, :controllers => {registrations: "registrations"}
  get "home/index"
  get "home/minor"
  root to: 'home#index'
end
