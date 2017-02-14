Rails.application.routes.draw do
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    get 'logout' => :delete
  end
  resources :users
  resources :questions
  # root url: questions_path
end
