Center::Application.routes.draw do
 root "main#index"
 get '/services/', to: 'main#services', as: 'services'
 get '/about/', to: 'main#about', as: 'about'
 get '/contact/', to: 'main#contact', as: 'contact'
 get '/patients/', to: 'main#patients', as: 'patients'
end
