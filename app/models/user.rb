class User < ActiveRecord::Base
	has_secure_password
	validates :password, presence: { on: :create }
	validates :email, uniqueness: true
end
