Rails.application.routes.draw do
  resources :exames
  resources :laboratorios
  post '/associar', to: 'exames#associar'
  post '/desassociar', to: 'exames#desassociar'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
