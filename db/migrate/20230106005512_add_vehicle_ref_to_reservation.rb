class AddVehicleRefToReservation < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :vehicle, null: false, foreign_key: true
  end
end
