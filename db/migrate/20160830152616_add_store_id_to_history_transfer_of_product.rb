class AddStoreIdToHistoryTransferOfProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :history_transfer_of_products, :store_id, :integer
  end
end
