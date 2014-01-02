Center::Application.routes.draw do
  devise_for :users
 root "registration#index"
 get '/services/', to: 'registration#services', as: 'services'
 get '/about/', to: 'registration#about', as: 'about'
 get '/contact/', to: 'registration#contact', as: 'contact'
 get '/patients/', to: 'registration#patients', as: 'patients'
end
