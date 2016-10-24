class ArticlesController < ApplicationController
include ArticlesHelper
	def index
		@articles = Article.all
	end

	def show 
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def new
		@article = Article.new
	end

	def update
		@article = Article.find(params[:id])
		@article.update(article_params)
		flash.notice = "Article '#{@article.title}' Updated!"
		redirect_to article_path(@article)
	end

	def edit
		@article = Article.find(params[:id])
	end

	def create
		@article = Article.new(article_params)
		@article.save
		redirect_to article_path(@article)
	end
	
	def destroy
		@article = Article.find(params[:id])
		@article.destroy
		redirect_to '/articles'
	end

	before_filter :require_login, only: [:new, :create, :edit, :update, :destroy]

	def require_login
		unless logged_in?
			flash.now.alert = "Must log in to make changes!"
			redirect_to root_path
		end
	end
end
