Rails.application.routes.draw do
  get 'contact/call'
  get 'school/academy'
  get 'enter/login'
  get 'work/services'
  get 'story/about'
  resources :navigs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'navigs#home'
end
