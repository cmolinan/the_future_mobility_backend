class AddColumnsToVehicle < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :transmission, :string
    add_column :vehicles, :fuel_capacity, :string
    add_column :vehicles, :seat, :string
  end
end
