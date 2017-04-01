class Site::LineItemsController < SiteController
  include CurrentCart

  before_action :set_cart, only: [:create,:update, :destroy]

  def create
    @line_item = @cart.add_product(params[:product_id])
    respond_to do |format|
      if @line_item != false
        format.html { redirect_to "/carts/#{@cart.id}" }
      else
        format.html { redirect_to "/carts/#{@cart.id}" }
      end
    end
  end

  def destroy
    result = @cart.delete_item(params[:id]) 
    respond_to do |format|
      format.html { redirect_to :back }
    end
  end

end
