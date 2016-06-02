class CreateHomejoyms < ActiveRecord::Migration
  def change
    create_table :homejoyms do |t|
      t.string :selectservice
      t.integer :payment
      t.string :address
      t.integer :numofworkers
      t.integer :packages
      t.integer :ratecard

      t.timestamps null: false
    end
  end
end
