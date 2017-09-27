class CreateUserAddresses < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.text :userName
      t.text :streetAddress
      t.text :City
      t.text :State
      t.text :Zip

      t.timestamps
    end
  end
end
