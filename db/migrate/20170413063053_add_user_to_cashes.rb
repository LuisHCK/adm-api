class AddUserToCashes < ActiveRecord::Migration[5.0]
  def change
  	add_reference :cashes, :user, index: true
  end
end
