class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.text :address
      t.string :phone
      t.string :status
      t.decimal :total
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
