class AddDivNameIndex < ActiveRecord::Migration
  def change
  add_index :divisions, :name, unique: true
  end
end
