class Product < ApplicationRecord
  belongs_to :kind_of_packing
  belongs_to :store
  has_many :history_transfer_of_products, :dependent => :destroy

  after_save :check_transfer_store

  # делаем запись когда товар поступает на склад или перемещается со склада
  def check_transfer_store
    if store_id_changed?
      history_transfer = self.history_transfer_of_products.build
      history_transfer.description = "Поступление на склад #{self.store.name}"
      history_transfer.date_in = DateTime.now
      history_transfer.store_id = self.store_id
      history_transfer.save
    end
  end

end
