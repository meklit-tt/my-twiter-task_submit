Rails.application.routes.draw do
  resources :towits do
    collection do
      post :confirm
    end
  end
end
