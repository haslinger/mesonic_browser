# This is an auto-generated file: don't edit!
# You can add your own routes in the config/routes.rb file
# which will override the routes in this file.

MesonicBrowser::Application.routes.draw do


  # Resource routes for controller t001s
  resources :t001s


  # Resource routes for controller t003s
  resources :t003s


  # Resource routes for controller t009s
  resources :t009s


  # Resource routes for controller t004s
  resources :t004s


  # Resource routes for controller mesoniccolumns
  resources :mesoniccolumns


  # Resource routes for controller t002s
  resources :t002s


  # Resource routes for controller mesonictables
  resources :mesonictables


  # Resource routes for controller users
  resources :users, :only => [:edit, :show, :create, :update, :destroy] do
    collection do
      post 'signup', :action => 'do_signup'
      get 'signup'
    end
    member do
      get 'account'
      put 'reset_password', :action => 'do_reset_password'
      get 'reset_password'
    end
  end

  # User routes for controller users
  post 'login(.:format)' => 'users#login', :as => 'user_login_post'
  get 'login(.:format)' => 'users#login', :as => 'user_login'
  get 'logout(.:format)' => 'users#logout', :as => 'user_logout'
  get 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password'
  post 'forgot_password(.:format)' => 'users#forgot_password', :as => 'user_forgot_password_post'


  # Resource routes for controller t010s
  resources :t010s


  # Resource routes for controller t013s
  resources :t013s


  # Resource routes for controller t012s
  resources :t012s


  # Resource routes for controller t015s
  resources :t015s


  # Resource routes for controller t014s
  resources :t014s


  # Resource routes for controller t011s
  resources :t011s

  namespace :concerns do

  end

end
