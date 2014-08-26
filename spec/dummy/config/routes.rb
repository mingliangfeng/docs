Rails.application.routes.draw do

  devise_for :users

  mount Docs::Engine => "/docs"
  
end
