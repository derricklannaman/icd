Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get "icd10s/:code", to: "icd10s#show"
    end
  end
end
