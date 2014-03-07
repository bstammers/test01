class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile
      t.string :email
      t.string :username
      t.string :password_digest
      t.string :avatar_url
      t.boolean :site_admin
      t.boolean :team_manager

      t.timestamps
    end
  end
end
