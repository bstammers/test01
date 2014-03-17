class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :phone
      t.string :avatar
      t.boolean :adminflag
      t.boolean :managerflag

      t.timestamps
    end
  end
end
