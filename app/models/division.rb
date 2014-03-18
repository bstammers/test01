class Division < ActiveRecord::Base
    validates :name, presence: { on: :create }
    validates :name, uniqueness: true
    #has_many :teams
    #has_many players
    belongs_to :competition
    has_many :players, through: :teams
end
