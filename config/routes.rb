Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/rock",{:controller => "game", :action => "play_rock"})
  get("/paper",{:controller => "game", :action => "play_paper"})
  get("/scissors",{:controller => "game", :action => "play_scissors"})
  
end
