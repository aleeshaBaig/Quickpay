class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.string :bill_type
      t.integer :amount
      t.integer :customer_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
