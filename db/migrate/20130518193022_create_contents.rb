class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.integer :order_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
