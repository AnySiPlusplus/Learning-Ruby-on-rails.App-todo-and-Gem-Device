Rails.application.routes.draw do
  devise_for :users
	root 'posts#index', as: 'home'

	get 'about' => 'pages#about' , as: 'about'
 	get 'avtorun' => 'avtorun#avtorizate', as: 'avt'

    resources :posts do 
    resources :comments
  end
end
