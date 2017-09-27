class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :userName
      t.text :firstName
      t.text :lastName
      t.text :Email
      t.text :phone
      t.text :password

      t.timestamps
    end
  end
end
