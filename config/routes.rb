Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/workouts" => "workouts#index"
  post "/workouts" => "workouts#create"
  get "/workouts/:id" => "workouts#show"
  patch "/workouts/:id" => "workouts#update"
  delete "/workouts/:id" => "workouts#delete"
end
