class Administrators::MenusController < AdministratorsController
  
  include AdministratorMenuHelper	
  before_action :set_menu, only: [:edit]	


  def index
    @menus = Menu.all
  end

  def edit
  	@menu_items    = @menu.menu_items.all.order(:position)
  	@parents_items = @menu_items.where(menu_item_id: 0).order(:position)
  end


  private


  def set_menu
    @menu = Menu.find(params[:id])
  end


end