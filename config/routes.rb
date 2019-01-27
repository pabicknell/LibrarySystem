Rails.application.routes.draw do
  
  get 'members/index'

	get 'authentication/login'
	post 'authentication/login'
	get 'books/new'
	get 'users/new'
	get 'transactions/new'
	get 'dashboard/index'
	root 'dashboard#index'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
