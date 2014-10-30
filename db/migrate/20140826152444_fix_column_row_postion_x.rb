class FixColumnRowPostionX < ActiveRecord::Migration
  def change
    rename_column :atoms, :row_postion_x, :row_position_x
  end
end
