class AddAssociations < ActiveRecord::Migration
  def change
    add_column :competition, :division_id:integer
    add_column :competition, :team_id:integer
    add_column :division, :team_id:integer
    add_column :team, :player_id:integer

  end
end
