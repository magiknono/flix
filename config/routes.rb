Rails.application.routes.draw do
  get "movies", to: "movies#index"
  get "movies/:id" => "movies#show"
end
