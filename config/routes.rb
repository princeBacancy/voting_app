Rails.application.routes.draw do
  root 'user_login_credentials#index'
  
  get '/sign_up' => 'user_login_credentials#sign_up', as: "sign_up"
  post '/welcome_sign_up' => 'user_login_credentials#welcome_sign_up'
  get '/welcome/:name' => 'user_login_credentials#welcome', as: "welcome"
  
  get '/login' => 'user_login_credentials#login', as: "login"
  post '/login' => 'user_login_credentials#after_login'

  get '/offline/home' => 'offline_modes#home', as: "offline_home"
  post '/offline/vote' => 'offline_modes#vote'

  get '/offline/live' => 'offline_modes#live', as: "live"
  post '/offline/results' => 'offline_modes#results'
  get 'offline/results_page' => 'offline_modes#results_page', as: "results_page"
end
