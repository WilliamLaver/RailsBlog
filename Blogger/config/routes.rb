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
	resources :articles do 
		resources :comments
	end
	resources :tags
	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
