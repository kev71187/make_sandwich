class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :category_id
      t.string :name
      t.decimal :cost, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
