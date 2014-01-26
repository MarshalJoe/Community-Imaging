Center::Application.routes.draw do
 
 devise_for :users
 root "screenings#index"
 get '/services/', to: 'screenings#services', as: 'services'
 get '/about/', to: 'screenings#about', as: 'about'
 get '/contact/', to: 'screenings#contact', as: 'contact'
 get '/patients/', to: 'screenings#new', as: 'patients'
 get '/mission/', to: 'screenings#mission', as: 'mission'
 get '/people/', to: 'screenings#people', as: 'people'
 get '/directions/', to: 'screenings#directions', as: 'directions'
 get '/insurance/', to: 'screenings#insurance', as: 'insurance'
 get '/additionalresources/', to: 'screenings#addresources', as: 'additionalresources'



 namespace :admin do 
  root to: "dashboard#index"
 end

 resources :surveys
 resources :leads
 resources :screenings, except: :new
end
