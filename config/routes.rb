Rails.application.routes.draw do
  devise_for :users
  root to: 'musics#index'
  resources :musics do
    collection do
      get 'search'
    end
  end
  resources :selects do
    collection do
      get 'search'
    end
  end
end
