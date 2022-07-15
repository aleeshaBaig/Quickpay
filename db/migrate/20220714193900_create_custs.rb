class CreateCusts < ActiveRecord::Migration[7.0]
  def change
    create_table :custs do |t|
      t.string :name
      t.string :email
      t.integer :phone
      t.string :district

      t.timestamps
    end
  end
end
