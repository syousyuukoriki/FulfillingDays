Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'diarys/index'
  root to: "diarys#index"
  resources :diarys, only:[:index]
end
