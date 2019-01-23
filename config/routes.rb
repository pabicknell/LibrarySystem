Rails.application.routes.draw do
  
	get 'authentication/login'
	get 'books/new'
	get 'users/new'
	get 'dashboard/index'
	get 'login', to: 'authentication#login', as: 'login'
	root 'dashboard#index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
