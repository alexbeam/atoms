class AddAtomIdToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :atom_id, :integer
  end
end
