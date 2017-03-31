class Cart < ActiveRecord::Base
  has_many :line_items

  def add_product(product_id)
    Site::SCart::AddProduct.new(product_id, self).main
  end

  def delete_item(line_item_id)
    Site::SCart::DeleteItem.new(line_item_id, self).main
  end

  def delete_cart
    Site::SCart::DeleteCart.new(self).main
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end
end
