Rails.application.routes.draw do
  resources :states, except: [:new, :edit]
  scope :api, defaults: {format: :json} do 
    resources :cities, except: [:new, :edit]
  end
end
