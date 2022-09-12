class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.integer :bedrooms
      t.string :property_type

      t.timestamps
    end
  end
end
