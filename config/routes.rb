Rails.application.routes.draw do
  root "admin/articles#index"

  scope module: :admin do
    resources :articles do
      resources :comments
    end
  end
end
