Rails.application.routes.draw do
	root to: 'articles#index'
# Following commented lines describe a hardcoded 'resources' call:
#	get '/articles' => 'articles#index'
#	post '/articles' => 'articles#create'
#	get '/articles/new' => 'articles#new', as: :new_article
#	get '/articles/:id/edit' => 'articles#edit', as: :edit_article
#	get '/articles/:id' => 'articles#show', as: :article
#	patch '/articles/:id' => 'articles#update'
#	put '/articles/:id' => 'articles#update'
#	delete '/articles/:id' => 'articles#destroy'
	get '/articles/:id/edit/removeAttachment' => 'articles#removeAttachment', as: :removeAttachment
	resources :articles do 
		resources :comments
	end
	resources :tags
	resources :authors
	resources :author_sessions, only: [:new, :create, :destroy]

	get 'login' => 'author_sessions#new'
	get 'logout' => 'author_sessions#destroy'
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
