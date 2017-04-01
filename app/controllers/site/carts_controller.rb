class Site::CartsController < SiteController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def show
    @order = Order.new
  end


  def create
    @cart = Cart.new(cart_params)
    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def destroy
    if @cart.id == session[:cart_id]
      @cart.delete_cart
      session[:cart_id] = nil
    end
    redirect_to '/'
  end


  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  private
  
  def set_cart
    @cart = Cart.find(params[:id])
  end

  def cart_params
    params[:cart]
  end

  def record_not_found
    redirect_to '/'
  end
end
