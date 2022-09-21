class AddSuburbStatePostcodeToProperties < ActiveRecord::Migration[7.0]
  def change
    add_column :properties, :suburb, :string
    add_column :properties, :state, :string
    add_column :properties, :postcode, :string
  end
end
