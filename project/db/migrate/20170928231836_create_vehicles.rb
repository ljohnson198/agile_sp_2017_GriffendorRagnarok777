class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :userName
      t.text :vehicleType
      t.integer :maxRiders

      t.timestamps
    end
  end
end
