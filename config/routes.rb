Rails.application.routes.draw do
  root 'welcomes#index'

  #devise_for :admins
 # devise_for :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, 
 controllers: { sessions: 'admins/sessions', confirmations: 'admins/confirmations', registrations: 'admins/registrations',passwords: 'admins/passwords' } 

 devise_for :students, 
 controllers: { sessions: 'students/sessions', confirmations: 'students/confirmations', registrations: 'students/registrations',passwords: 'students/passwords' } 

  resources :profiles
    resources :resumes


end
