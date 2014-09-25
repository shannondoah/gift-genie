class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.string :img_filepath
      t.timestamps
    end
  end
end
