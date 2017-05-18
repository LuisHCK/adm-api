class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.string :seller

      t.timestamps
    end
    add_reference :services, :user, index: true
  end
end
