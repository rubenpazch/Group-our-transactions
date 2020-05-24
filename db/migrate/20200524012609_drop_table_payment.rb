class DropTablePayment < ActiveRecord::Migration[6.0]
  def change
    drop_table :payments
  end
end
