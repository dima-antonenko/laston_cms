class Administrators::MenusController < AdministratorsController
  
  include AdministratorMenuHelper	

  def index
    @menus = Menu.includes(:menu_items)
  end

  def edit
    @menu = Menu.find(params[:id])
  	@menu_items    = @menu.menu_items.all.order(:position)
  	@parents_items = @menu_items.where(menu_item_id: 0).order(:position)
  end

end