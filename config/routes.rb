Center::Application.routes.draw do
 root "main#index"

 get '/services/', to: 'main#services', as: 'services'

end
