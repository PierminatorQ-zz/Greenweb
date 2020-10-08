Rails.application.routes.draw do
  devise_for :users
  
  authenticated do   
    get 'dashboard/panel'
  end

  resources :cctvitems do
    member do
    delete :delete_image_attachment
    end
  end

  resources :solaritems do
    member do
    delete :delete_image_attachment
    end
  end

  resources :lightitems do
    member do
      delete :delete_image_attachment
    end
  end

  root 'home#index'
  get 'nosotros', to: 'home#about'
  get 'contacto', to: 'home#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
