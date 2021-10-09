Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      root to: "homes#top"
      resources :coffees, only: [:index, :show]
    end
  end
end
