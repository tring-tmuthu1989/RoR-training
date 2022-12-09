Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/mails" if Rails.env.development?
  devise_for :users
  resources :articles
  root "application#home"
  get "/hello" => "application#home"
  resources :posts
  get "/posts/new", as: :new_posts
end
