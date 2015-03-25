Rails.application.routes.draw do
  root 'welcome#index'
  get 'sign-up', to: 'registrations#new'
  post 'sign-up', to: 'registrations#create'
end
