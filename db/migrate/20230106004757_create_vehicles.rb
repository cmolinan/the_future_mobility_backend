class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :image
      t.string :details1
      t.string :details2

      t.timestamps
    end
  end
end
