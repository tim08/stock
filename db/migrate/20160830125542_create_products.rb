class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :kind_of_packing_id

      t.timestamps
    end
  end
end
