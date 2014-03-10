class Player < ActiveRecord::Base
	attr_accessor :password, :password_confirmation
	validates :first_name, :last_name, :email, :username, presence: true
	validates :email, :username, uniqueness: true

	has_secure_password
#	validates_confirmation_of :password
#	validates_presence_of :password, :on => :create

#	def encrypt_password
#		if password.present?
#			self.password_digest = BCrypt::Engine.hash_secret(password, password_digest)
#		end
#	end

#	def self.authenticate(email, password)
#		player = find_by_email(email)
#		if player && player.password_digest == BCrypt::Engine.hash_secret(password, player.password_digest)
#			player
#		else
#			nil
#		end
#	end
end
