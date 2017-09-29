class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.text :userName
      t.integer :age
      t.text :gender
      t.text :streetAddress
      t.text :City
      t.text :State
      t.text :Zip
      t.text :profilePicUrl


      t.timestamps
    end
  end
end
