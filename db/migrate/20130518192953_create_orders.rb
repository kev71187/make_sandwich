class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.decimal :cost, :precision => 6, :scale => 2

      t.timestamps
    end
  end
end
