module SessionsHelper
	def sign_in(player)
		remember_token = Player.new_remember_token
		cookies.permanent[:remember_token] = remember_token
		player.update_attribute(:remember_token, Player.hash(remember_token))
		self.current_player = player
	end
	def signed_in?
		!current_player.nil?
	end
	def current_player=(player)
		@current_player = player
	end
	def current_player
		remember_token = Player.hash(cookies[:remember_token])
		@current_player ||= Player.find_by(remember_token: remember_token)
	end
	def sign_out
		current_player.update_attribute(:remember_token, Player.hash(Player.new_remember_token))
		cookies.delete(:remember_token)
		self.current_player = nil
	end
end
