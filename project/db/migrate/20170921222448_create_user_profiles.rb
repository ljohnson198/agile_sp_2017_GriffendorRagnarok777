class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.text :userName
      t.text :gender
      t.boolean :smoking

      t.timestamps
    end
  end
end
