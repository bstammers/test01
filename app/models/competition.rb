class Competition < ActiveRecord::Base
  validates :name, presence: { on: :create }
  validates :name, uniqueness: true
  has_many :divisions
  has_many :teams
  has_many :players, through :teams
end
