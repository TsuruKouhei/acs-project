Rails.application.routes.draw do
  devise_for :users
  root 'surveys#new'
  resources :crops
  resources :categories
  resources :surveys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # letter_openerを使用するためのルーティング
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
