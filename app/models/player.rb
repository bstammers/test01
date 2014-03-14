class Player < ActiveRecord::Base
	before_create :create_remember_token
	has_secure_password
	validates :password, presence: { on: :create }
	validates :email, :username, uniqueness: true
	validates :username, uniqueness: true
	validates :firstname, :lastname, :email, :username, presence: true

	def Player.new_remember_token
		SecureRandom.urlsafe_base64
	end
	def Player.hash(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private
		def create_remember_token
			self.remember_token = Player.hash(Player.new_remember_token)
		end
end
