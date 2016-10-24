class TagsController < ApplicationController

	def show 
		@tag = Tag.find(params[:id])
	end

	before_filter :require_login, only: [:destroy]

	def require_login
		unless logged_in?
			alert("Cannot delete tags unless logged in!")
			redirect_to('show')
		end
	end
end
