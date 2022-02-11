Rails.application.routes.draw do
  scope "(:locale)", locale: /en|vi/ do

    root "static_pages#home"
    get "/contact", to: "static_pages#contact"

    namespace :admin do
      root "admin#index"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
