class AddMoeToAtoms < ActiveRecord::Migration
  def change
    add_column :atoms, :moe, :integer
  end
end
