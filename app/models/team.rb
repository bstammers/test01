class Team < ActiveRecord::Base

  belongs_to :competition
  belongs_to :division
end
