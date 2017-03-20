class Administrators::ProductsController < AdministratorsController

  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @actions = [['Удалить', 0], ['Опубликовать', 1], ['Снять с публикации', 2]]
    @products = Product.paginate(:page => params[:page], :per_page => 30)
  end

  def edit
    @product_attachments = ProductAttachment.where(product_id: @product.id)
    @product_categories  = ProductCategory.all.collect {|category| [category.name, category.id ]}
  end

  def update
    SAdministrator::SProduct::Update.new(@product, params).main
    respond_to do |format|
      if @product.save
        format.html { redirect_to :back, notice: 'Информация обновлена' }
      else
        format.html {  redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def new
    @product = Product.new
    @product_categories  = ProductCategory.all.collect {|category| [category.name, category.id ]}
  end

  def create
    @product = Product.new
    SAdministrator::SProduct::Create.new(@product, params).main
    respond_to do |format|
      if @product.save
        format.html { redirect_to edit_administrators_product_path(@product), notice: 'Товар создан' }
      else
        format.html {  redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Товар удален' }
    end
  end


  def checked
    SAdministrator::SProduct::GroupChange.new(params).main
    respond_to do |format|
      format.html {  redirect_to :back, notice: 'Товар удален' }
    end
  end

 

  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :avatar, :price, :product_category_id, :sku, :description,
     :stock, :active, :checked_action, :checked_products[])

  end

end
