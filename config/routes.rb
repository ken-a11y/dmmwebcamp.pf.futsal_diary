Rails.application.routes.draw do
  devise_for :users,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  scope module: :public do
    root to: 'homes#top'
    get '/about' => 'homes#about'
    get '/users/quit' => 'users#quit'
    patch '/users/out' => 'users#out'
    get "search" => "searches#search"

    resources :users, only: [:show,:edit,:update]
    resources :teams, only: [:show,:new,:edit,:create,:update] do
      resources :team_users, only: [:create,:destroy]
    end
    resources :diaries do
      resources :diary_comments, only: [:create,:destroy]
      resource :diary_favorites, only: [:create,:destroy]
    end
    resources :tactics, only: [:index,:show]
  end

  namespace :admin do
    resources :users, only: [:index,:show,:edit,:update]
    resources :diaries, only: [:index,:show,:edit,:update] do
      resources :diary_comments, only: [:destroy]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
