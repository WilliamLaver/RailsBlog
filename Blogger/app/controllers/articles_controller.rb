class ArticlesController < ApplicationController
	def index
		@articles = Article.all
	end

	def show 
		@article = Article.find(params[:id])
	end

	def new

	end

	def update

	end

	def edit

	end

	def create

	end

	def destroy

	end
end
