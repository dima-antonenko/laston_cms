class Administrators::PostCategoriesController < AdministratorsController


  before_action :set_post_category, only: [:edit, :update, :destroy]


  def index
    @post_categories = PostCategory.all
    @parent_post_categories = PostCategory.where(post_category_id: 0)
  end

  def new
    @post_category = Administrators::PostCategoryDecorator.decorate(PostCategory.new())
  end

  def create
    @post_category = PostCategory.new(post_category_params)
    respond_to do |format|
      if @post_category.save
        format.html { redirect_to edit_administrators_post_category_path(@post_category), notice: 'Информация сохранена' }
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def update
    @post_category.update(post_category_params)
    respond_to do |format|
      if @post_category.save
        format.html { redirect_to edit_administrators_post_category_path(@post_category), notice: 'Информация сохранена' }
      else
        format.html { redirect_to edit_administrators_post_category_path(@post_category), notice: 'Произошла ошибка' }
      end
    end
  end

  def edit

  end

  def destroy
    PostCategory.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Категория удалена' }
    end
  end


  private


  def set_post_category
    @post_category = Administrators::PostCategoryDecorator.decorate(PostCategory.friendly.find(params[:id]))
  end

  def post_category_params
    params.require(:post_category).permit(:name, :post_category_id, :slug, :description, :seo_title,
                                          :seo_description, :seo_keywords, :avatar)
  end


end
