Center::Application.routes.draw do
  devise_for :users
 root "screenings#index"
 get '/services/', to: 'screenings#services', as: 'services'
 get '/about/', to: 'screenings#about', as: 'about'
 get '/contact/', to: 'screenings#contact', as: 'contact'
 get '/patients/', to: 'screenings#new', as: 'patients'

 resources :screenings, except: :new
end
