class SessionsController < ApplicationController
	def new
	end
	def create
		#render 'new'
		player = Player.find_by(username: params[:session][:username].downcase)
		if player && player.authenticate(params[:session][:password])
			sign_in player
			redirect_to player
		else
			flash.now[:error] = 'Invalid username/password combination'
			render 'new'
		end
	end
	def destroy
		sign_out
		redirect_to root_url
	end
end
