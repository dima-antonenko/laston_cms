class Site::OrdersController < SiteController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :set_order, only: [:show, :edit, :update, :destroy]


  def create
    respond = Site::SOrder::Create.new(params, @cart).main
    respond_to do |format|
      if respond[:status] == :success
       format.html { redirect_to root_path, notice: 'Спасибо за Ваш заказ' }
       session[:cart_id] = nil
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
      end
    end 
  end

  def show
    @line_items = LineItem.where(order_id: @order.id)
  end


  private
  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

end