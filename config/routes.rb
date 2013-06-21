WebMenu::Application.routes.draw do



  resources :farms do
resources :crops
end



  resources :menus do
      resources :plates
end

  get "home/index"
  root :to => "menus#index"
  
end
