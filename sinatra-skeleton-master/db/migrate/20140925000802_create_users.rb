class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password
      t.string :name
      t.string :avatar
      t.string :cover_photo
      t.integer :male
      t.integer :female
      t.string :birthdate
      t.string :shipping_address
      t.string :phone
    end
  end
end
