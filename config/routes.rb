Rails.application.routes.draw do
  root to: "pages#home"
  resources :pokemon_sets, only: [:index, :show] do
    resources :pokemon_cards, only: [:index, :show]
  end
end
