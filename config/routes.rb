Rails.application.routes.draw do
  resources :topics, only: [:index, :show]

  resources :portfolios

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' } 
  resources :portfolios, only: [:index] do 
    put :sort, on: :collection
  end
  get 'angular-items', to: 'portfolios#angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'about-me', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  get 'about', to: 'pages#about'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do 
  		get :toggle_status, on: :member
  	end

  resources :portfolios do
      get :toggle_status, on: :member
    end

  mount ActionCable.server => '/cable'

  root to: 'pages#home'
end
