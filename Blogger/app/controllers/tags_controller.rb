class TagsController < ApplicationController

	def show 
		@tag = Tag.find(params[:id])
	end

	def index
		@tags = Tag.all
	end

	before_filter :require_login, only: [:destroy]

	def require_login
		unless logged_in?
			redirect_back fallback_location: '/tags'
			flash.notice = "Cannot delete tags unless logged in!"
			return false
		end
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		redirect_to '/tags'
	end

end
