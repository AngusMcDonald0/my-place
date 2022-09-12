class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.references :property, null: false, foreign_key: true
      t.string :cash_flow_type
      t.date :date
      t.float :amount
      t.string :description
      t.string :category

      t.timestamps
    end
  end
end
