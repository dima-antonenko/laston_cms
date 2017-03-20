class Site::LineItemsController < SiteController
  include CurrentCart

  before_action :set_cart, only: [:create,:update, :destroy]
 
  def create
    product = Product.friendly.find(params[:product_id])
    @line_item = LineItem.new(cart_id: @cart.id, product_id: product.id, product_name: product.name,
     product_sku: product.sku, product_price: product.price)
    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart  }
      end
    end
  end
  
  def destroy
    LineItem.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to @line_item.cart, notice: 'Позиция удалена' }
      format.json { head :no_content }
    end
  end

end