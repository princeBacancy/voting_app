Rails.application.routes.draw do
  root 'user_login_credentials#index'
  get '/sign_up' => 'user_login_credentials#sign_up', as: "sign_up"
  post '/welcome_sign_up' => 'user_login_credentials#welcome_sign_up'
  get '/welcome' => 'user_login_credentials#welcome', as: "welcome"
  get '/login' => 'user_login_credentials#login', as: "login"
   
end
