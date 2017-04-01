class AddQtyToProduct < ActiveRecord::Migration
  def change
    add_column :products, :qty, :integer, index: true, default: 1, null: false
    add_column :products, :stock, :boolean, index: true, default: true, null: false

  end
end
