Rails.application.routes.draw do
  resources :tessere
  resources :utenti
  resources :anagrafiche
  resources :comuni
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
