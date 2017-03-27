module AdministratorMenuHelper

  def get_paret_menu_item(menu_item)
    if menu_item.menu_item_id == 0
      'Родительский пункт'
    elsif menu_item.menu_item
      link_to menu_item.menu_item.title, edit_administrators_menu_item_path(menu_item)
    end  
  end

end