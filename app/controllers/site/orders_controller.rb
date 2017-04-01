class Site::OrdersController < SiteController
  include CurrentCart
  before_action :set_cart, only: [:create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]


  def create
    result = Site::SOrder::Create.new(params, @cart).main
    respond_to do |format|
      if result
        session[:cart_id] = nil
        format.html { redirect_to order_path(result), notice: 'Спасибо за Ваш заказ' }
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def show
    @line_items = LineItem.where(order_id: @order.id)
  end


  private


  def set_order
    @order = Order.find(params[:id])
  end

end
