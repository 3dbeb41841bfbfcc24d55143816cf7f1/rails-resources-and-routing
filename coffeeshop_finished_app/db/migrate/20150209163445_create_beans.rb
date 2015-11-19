class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string :name
      t.string :roast
      t.string :origin
      t.float :quantity

      t.timestamps null: false
    end
  end
end
