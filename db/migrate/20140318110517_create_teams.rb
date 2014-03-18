class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :manager
      t.integer :played
      t.integer :won
      t.integer :drawn
      t.integer :set_won
      t.integer :set_lost
      t.integer :points_for
      t.integer :points_against
      t.decimal :sets_percent
      t.decimal :points_percent
      t.integer :comp_points

      t.timestamps
    end
  end
end
