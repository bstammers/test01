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
			sign_in @player
			flash[:success] = "Welcome to the Test App!"
			redirect_to @player
		else
			render 'new'
		end
	end
	def edit
	  @player = Player.find(params[:id])
	end
	def update
    @player = Player.find(params[:id])
     if @player.update_attributes(player_params)
       redirect_to @player
     end

	end

	private
		def player_params
			params.require(:player).permit(:firstname, :lastname, :username, :email, :password, :password_confirmation)
		end
end
