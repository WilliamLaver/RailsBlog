class AuthorSessionsController < ApplicationController

	def new
		$my_previous_url = URI(request.referer || '').path
	end

	def create
		if login(params[:email], params[:password])
			redirect_to $my_previous_url
			flash.notice = "Login Successful!"
		else
			flash.notice = "#{login}"
			render action: :new
		end
	end

	def destroy
		logout
		redirect_back fallback_location: root_path
		flash.notice = "Logged Out Successfully"
	end

end
