Rails.application.routes.draw do
  get "/type", to: "type#index", as: "types"
  get "/type/:id", to: "type#show", as: "type", constraints: { id: /\d+/ }

  get "/pokemon", to: "pokemon#index", as: "pokemons"
  get "/pokemon/:id", to: "pokemon#show", as: "pokemon", constraints: { id: /\d+/ }

  get "/quote", to: "quote#index", as: "quotes"
  get "/quote/:id", to: "quote#show", as: "quote", constraints: { id: /\d+/ }

  get "/pages/about" => "pages#about"

  # httpverb 'url/path' => 'controller#action', as: 'named_route'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
