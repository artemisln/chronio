Rails.application.routes.draw do
  scope "(:locale)", locale: /en|es|gr|fr/ do  # Add any additional supported language codes here
    resources :posts do
      scope module: :posts do
        resources :reactions, only: [:create]
      end
    end

    devise_for :users
    # get "pages/home"
    get "pages/about"
    get "pages/tos"
    get "pages/privacy-policy"

    # Health check route
    get "up" => "rails/health#show", as: :rails_health_check

    # PWA dynamic routes
    get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
    get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

    authenticated :user do
      root to: "feed#show", as: :authenticated_user_root
    end

    # Root path route ("/")
    root "pages#home"
  end
end