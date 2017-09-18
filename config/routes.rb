Rails.application.routes.draw do
  scope :api, defaults: {format: :json} do 
    resources :cities, except: [:new, :edit] #, only: [:index, :show]
    resources :states, except: [:new, :edit] #, only: [:index, :show]
  end

  get '/ui' => 'ui#index'
  get '/ui#' => 'ui#index'   
  root "ui#index"

end
