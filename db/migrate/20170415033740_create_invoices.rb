class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.string :client
      t.integer :products
      t.integer :services
      t.decimal :total
      t.boolean :credit
      t.integer :code
      t.string :seller
      t.datetime :date_open
      t.datetime :date_charged

      t.timestamps
    end
  	add_reference :invoices, :user, index: true
  end
end
