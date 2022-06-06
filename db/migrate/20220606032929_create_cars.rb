class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name, :color, :info
      t.integer :product_year, :price, :ood_number, :brand_id

      t.timestamps
    end
  end
end
