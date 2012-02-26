Dummy::Application.routes.draw do
  resources :reminders
  root to: 'reminders#index'
end
