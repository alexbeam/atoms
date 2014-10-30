class AddShortnameAndRowpositionsToAtoms < ActiveRecord::Migration
  def change
    add_column :atoms, :shortname, :string
    add_column :atoms, :row_postion_x, :integer
    add_column :atoms, :row_position_y, :integer
  end
end
