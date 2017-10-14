Rails.application.routes.draw do
  resources :horses, :airplanes, :cars, :trains
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
