class CreateSummaries < ActiveRecord::Migration[5.0]
  def change
    create_table :summaries do |t|
      t.integer :sales
      t.integer :services
      t.decimal :cash
      t.integer :unpaid_bills
      t.integer :bills_paid
      t.integer :employees

      t.timestamps
    end
    add_reference :summaries, :user, index: true
  end
end
