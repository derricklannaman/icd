Rails.application.routes.draw do

  root "pages#index"
  get "search", to: "pages#search"
  get "autocomplete", to: "pages#autocomplete"

  namespace :api do
    namespace :v1 do
      resources :icd10
    end
  end
end
