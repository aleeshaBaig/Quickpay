class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :bill_id
      t.integer :customer_id
      t.date :payment_date
      t.time :payment_time
      t.integer :amount
      t.string :payemnt_method

      t.timestamps
    end
  end
end
