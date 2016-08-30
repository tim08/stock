class DeleteColumnsFromHistoryTransferofProduct < ActiveRecord::Migration[5.0]
  def change
    remove_column :history_transfer_of_products, :date_out
  end
end
