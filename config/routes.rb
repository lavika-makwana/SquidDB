Rails.application.routes.draw do

  root to: 'displays#home_page'
  
  resources :contents do
    member do
      get :delete 
    end
  end
end
