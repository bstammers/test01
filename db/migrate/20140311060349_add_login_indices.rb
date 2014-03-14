class AddLoginIndices < ActiveRecord::Migration
  def change
  	add_index :players, :username, unique: true
  	add_index :players, :email, unique: true
  end
end
