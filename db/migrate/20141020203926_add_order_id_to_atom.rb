class AddOrderIdToAtom < ActiveRecord::Migration
  def change
    add_column :atoms, :order_id, :integer
  end
end
