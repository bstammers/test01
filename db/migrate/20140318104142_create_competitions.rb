class CreateCompetitions < ActiveRecord::Migration
  def change
    create_table :competitions do |t|
      t.string :name
      t.boolean :points_percent_flag
      t.boolean :sets_percent_flag
      t.boolean :mvp_flag

      t.timestamps
    end
  end
end
