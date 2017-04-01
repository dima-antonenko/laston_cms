class AddDenormalisedProductDataToOrder < ActiveRecord::Migration
  def change
    add_column :orders, :products, :string, array: true, index: true, null: false, default: []
  end
end
