Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
    # ---- 以下を追加してください ---- #
    resources :post_images, only: [:new, :create, :index, :show, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
end
