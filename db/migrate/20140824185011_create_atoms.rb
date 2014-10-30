class CreateAtoms < ActiveRecord::Migration
  def change
    create_table :atoms do |t|
      t.string :name
      t.float :weight
      t.integer :number
      t.text :description

      t.timestamps
    end
  end
end
