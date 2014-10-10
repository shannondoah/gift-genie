class CreateCategoriesProducts < ActiveRecord::Migration
  def change
    create_table :categories_products do |t|
      t.belongs_to :category
      t.belongs_to :product
    end
  end
end
