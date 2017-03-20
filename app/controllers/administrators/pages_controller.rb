class Administrators::PagesController < AdministratorsController


  before_action :set_page, only: [:edit, :update, :destroy]


  def index
    @pages = Page.all
  end


  def update
    @page.update(page_params)
    respond_to do |format|
      if @page.save
        format.html { redirect_to edit_administrators_page_path(@page), notice: 'Информация сохранена' }
      else
        format.html { redirect_to edit_administrators_page_path(@page), notice: 'Произошла ошибка' }
      end
    end
  end

  def edit

  end

 

  private


  def set_page
    @page = Page.find(params[:id])
  end

  def page_params
    params.require(:page).permit(:name, :content, :seo_title, :seo_description, :seo_keywords)
  end


end
