Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "application#homepage"
  resources :therapists
  resources :sessions do
    member do
      patch :make_appointment
    end
    collection do
      get :my_sessions
    end
  end
end
