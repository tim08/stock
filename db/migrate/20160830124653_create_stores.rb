class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :address
      t.boolean :special_equipment
      t.integer :area

      t.timestamps
    end
  end
end
