class PlayersController < ApplicationController

	def show
		@player = Player.find(params[:id])
	end

	def new
		@player = Player.new
	end

	def create
		@player = Player.new(player_params)
		if @player.save
			flash[:success] = "Welcome to the Test App!"
			redirect_to @player
		else
			render 'new'
		end
	end
	def index

	end
	
	private
		def player_params
			params.require(:player).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
		end
end
