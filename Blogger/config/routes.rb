Rails.application.routes.draw do
	get '/articles' => 'articles#index'
	get '/articles/:id' => 'articles#show', as: :article
	get '/articles/new' => 'articles#new', as: :new_article
	post '/articles' => 'articles#create'
	get '/articles/:id/edit' => 'articles#edit'
	patch '/articles/:id' => 'articles#update'
	put '/articles/:id' => 'articles#update'
	delete '/articles/:id' => 'articles#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
