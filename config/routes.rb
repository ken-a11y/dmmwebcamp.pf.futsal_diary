Rails.application.routes.draw do
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    get '/users/quit' => 'users#quit'
    patch '/users/out' => 'users#out'
    get "search" => "searches#search"

    resources :users, only: [:show,:edit,:update, :create, :destroy, :quit, :out] do
      member do
        get :favorites
      end
    end
    resources :teams, only: [:show,:new,:edit,:create,:update] do
      resources :event_notices, only: [:new, :create]
      get "event_notices" => "event_notices#sent"
    end
    resources :diaries do
      resources :diary_comments, only: [:create,:destroy]
      resource :diary_favorites, only: [:create,:destroy]
    end
    resources :tactics, only: [:index, :show]
  end

  namespace :admin do
    get "search" => "searches#search"
    resources :users, only: [:index,:show,:edit,:update]
    resources :teams, only: [:index,:show,:edit,:update, :destroy]
    resources :diaries, only: [:index,:show,:edit,:update,:destroy] do
      resources :diary_comments, only: [:destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end