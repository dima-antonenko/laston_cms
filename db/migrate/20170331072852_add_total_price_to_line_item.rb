class AddTotalPriceToLineItem < ActiveRecord::Migration
  def change
    
    remove_column :line_items, :product_sku

    add_column :line_items, :total_price, :integer, index: true, default: 0, null: false

  end
end
