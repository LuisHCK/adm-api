class AddClientToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :client, :string
  end
end
