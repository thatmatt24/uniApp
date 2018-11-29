Rails.application.routes.draw do
  resources :enrollments do
    collection do
      get 'search'
    end
  end
  root to: 'home#index'
  resources :students
  resources :courses
  resources :sections
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
