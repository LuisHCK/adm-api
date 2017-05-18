class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.string :product
      t.decimal :price
      t.decimal :quantity
      t.string :seller

      t.timestamps
    end
    add_reference :sales, :user, index: true
  end
end
