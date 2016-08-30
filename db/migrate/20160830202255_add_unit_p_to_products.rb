class AddUnitPToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :unit_q, :integer
  end
end
