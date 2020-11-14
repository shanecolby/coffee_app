Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/coffes" => "coffes#index"
    get "/coffes/:id" => "coffes#show"
    post "/coffes" => "coffes#create"
    patch "/coffes/:id" => "coffes#update"
    delete '/coffes/:id' => "coffes#destroy"
  end
end
