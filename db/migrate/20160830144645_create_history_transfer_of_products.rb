class CreateHistoryTransferOfProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :history_transfer_of_products do |t|
      t.datetime :date_in
      t.datetime :date_out
      t.integer :product_id
      t.string :description

      t.timestamps
    end
  end
end
