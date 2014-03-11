class Player < ActiveRecord::Base
	has_secure_password
	validates :password, presence: { on: :create }
	validates :email, :username, uniqueness: true
	validates :username, uniqueness: true
	validates :firstname, :lastname, :email, :username, presence: true
end
