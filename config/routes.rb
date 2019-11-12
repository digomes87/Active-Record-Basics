# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'application#home'

  resources :logins

  resources :authors
  resources :posts

  resources :posts do
    resources :authors, only: [] do
      resources :comments, only: %i[index new create]
    end
  end
end
