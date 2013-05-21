class CreateSandwiches < ActiveRecord::Migration
  def change
    create_table :sandwiches do |t|
      t.string :title

      t.timestamps
    end
  end
end
