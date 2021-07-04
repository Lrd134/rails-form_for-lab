Rails.application.routes.draw do
  resources :school_classes, only: [:index, :show, :create, :update, :new, :edit]
  resources :students, only: [:index, :show, :create, :update, :new, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
