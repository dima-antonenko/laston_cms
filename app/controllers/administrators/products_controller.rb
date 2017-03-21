class Administrators::ProductsController < AdministratorsController

  before_action :set_product, only: [:edit, :update, :destroy]

  def index
    @actions = [['Удалить', 0], ['Опубликовать', 1], ['Снять с публикации', 2]]
    @products = Product.paginate(:page => params[:page], :per_page => 20)
  end

  def edit
    @product_attachments = ProductAttachment.where(product_id: @product.id)
    @product_categories  = ProductCategory.all.collect {|category| [category.name, category.id ]}
  end

  def update
    result = SAdministrator::SProduct::Update.new(@product, params).main
    respond_to do |format|
      if result
        format.html { redirect_to edit_administrators_product_path(result), notice: 'Информация обновлена' }
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
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
      format.html { redirect_to administrators_products_path, notice: 'Товар удален' }
    end
  end


  def checked
    SAdministrator::SProduct::GroupChange.new(params).main
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Информация обновлена' }
    end
  end



  private

  def set_product
    @product = Product.friendly.find(params[:id])
  end



end
