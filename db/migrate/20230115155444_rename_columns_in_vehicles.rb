class RenameColumnsInVehicles < ActiveRecord::Migration[7.0]
  def change
    rename_column :vehicles, :details1, :enginepower
    rename_column :vehicles, :details2, :enginetourque    
  end
end
