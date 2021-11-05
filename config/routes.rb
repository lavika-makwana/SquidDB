Rails.application.routes.draw do

  root to: 'displays#home_page'

  resources :contents do
    member do
      get :delete 
    end
  end

  get 'display_type_content/:id', to: 'displays#display_type_content', as: :list_contents

end
