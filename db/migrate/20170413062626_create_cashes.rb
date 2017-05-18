class CreateCashes < ActiveRecord::Migration[5.0]
  def change
    create_table :cashes do |t|
      t.string :total
      t.datetime :date_open
      t.datetime :date_close

      t.timestamps
    end
  end
end
