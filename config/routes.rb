Rails.application.routes.draw do
  root to: "pages#home"
  resources :pokemon_sets, only: [:index, :show], path: "sets" do
    resources :pokemon_cards, only: [:index, :show], path: "cards"
  end
end
