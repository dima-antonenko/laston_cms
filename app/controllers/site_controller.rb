class SiteController < ApplicationController

  before_action  :all_pages_data

  layout "site"

  def all_pages_data
    @main_menu_items   = Menu.find_by(descriptor: 'main_menu').menu_items.where(ancestry: nil)
    @footer_menu_items = Menu.find_by(descriptor: 'footer_menu').menu_items
    @minicart          = Cart.find(session[:cart_id]) if session[:cart_id]
  end

  def search_product
    result = Site::SearchProduct.new(params).main
    respond_to do |format|
      if result.class.to_s == 'Product::ActiveRecord_Relation'
        @products = result.paginate(page: params[:page], per_page: 10)
        format.html { render 'search_results' }
      elsif result.class.to_s == 'Product'
        format.html { redirect_to product_path(result) }
      elsif result.class.to_s == 'FalseClass'
        raise ActiveRecord::RecordNotFound, "Запись не найдена"
      end
    end
  end

end
