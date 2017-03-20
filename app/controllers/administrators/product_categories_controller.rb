class Administrators::ProductCategoriesController < AdministratorsController


  before_action :set_product_category, only: [:edit, :update, :destroy]


  def index
    @product_categories = ProductCategory.all
    @parent_product_categories = @product_categories.where(product_category_id: 0)
  end

  def new
    @product_category = Administrators::ProductCategoryDecorator.decorate(ProductCategory.new())
  end

  def create
    @product_category = ProductCategory.new(product_category_params)
    respond_to do |format|
      if @product_category.save
        format.html { redirect_to edit_administrators_product_category_path(@product_category), notice: 'Информация сохранена' }
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def update
    @product_category.update(product_category_params)
    respond_to do |format|
      if @product_category.save
        format.html { redirect_to edit_administrators_product_category_path(@product_category), notice: 'Информация сохранена' }
      else
        format.html { redirect_to edit_administrators_product_category_path(@product_category), notice: 'Произошла ошибка' }
      end
    end
  end

  def edit

  end

  def destroy
    ProductCategory.friendly.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Категория удалена' }
    end
  end


  private


  def set_product_category
    @product_category = Administrators::ProductCategoryDecorator.decorate(ProductCategory.friendly.find(params[:id]))
  end

  def product_category_params
    params.require(:product_category).permit(:name, :product_category_id, :slug, :description, :seo_title,
                                          :seo_description, :seo_keywords, :avatar)
  end


end
