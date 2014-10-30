class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :unique
      t.string :email

      t.timestamps
    end
  end
end
