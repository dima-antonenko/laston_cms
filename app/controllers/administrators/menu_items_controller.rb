class Administrators::MenuItemsController < AdministratorsController

  include AdministratorMenuHelper
  before_action :set_menu_item, only: [:edit, :update, :destroy]

  def edit
    @parent_menu_parent_items = MenuItem.where(menu_id: @menu_item.menu_id, menu_item_id: 0)
  end

  def update
    result = SAdministrator::SMenuItem::Update.new(@menu_item, params).main
    respond_to do |format|
      if result
        format.html { redirect_to :back, notice: 'Информация обновлена' }
      else
        format.html { redirect_to :back, notice: 'Произошла ошибка' }
      end
    end
  end

  def new
    @menu_item = MenuItem.new()
    @menus  = Menu.all.collect{|item| [item.name, item.id ]}
  end

  def create
    result = SAdministrator::SMenuItem::Create.new(params).main
    respond_to do |format|
      if result
        format.html { redirect_to edit_administrators_menu_item_path(result), notice: 'Информация обновлена' }
      else
        format.html { redirect_to '/administrators/menus', notice: 'Произошла ошибка' }
      end
    end
  end

  def destroy
    @menu_item.destroy
    respond_to do |format|
      format.html { redirect_to edit_administrators_menu_path(@menu_item.menu_id), notice: 'Пункт меню удален' }
    end
  end


  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

end
