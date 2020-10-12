Rails.application.routes.draw do
  get 'type/index'
  get 'type/show'
  get "/pokemon", to: "pokemon#index", as: "pokemons"
  get "/pokemon/:id", to: "pokemon#show", as: "pokemon", constraints: { id: /\d+/ } # company_path

  get "quote/index"
  get "quote/show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
