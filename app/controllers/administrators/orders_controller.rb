class Administrators::OrdersController < AdministratorsController

  before_action :set_order, only: [:show, :destroy]

  def index
    @orders = Order.all.order(:created_at).paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @products = Product.all.limit(3)
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to administrators_orders_path, notice: 'Заказ удален' }
    end
  end


  private


  def set_order
    @order = Order.find(params[:id])
  end

end