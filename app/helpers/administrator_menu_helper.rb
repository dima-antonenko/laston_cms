module AdministratorMenuHelper

  def get_paret_menu_item(menu_item)
    if menu_item.menu_item_id == 0
      'Родительский пункт'
    else
      link_to menu_item.title, edit_administrators_menu_item_path(menu_item)
    end  
  end


  def get_patent_menu_items_list
    MenuItem.all.collect {|item| [item.title, item.id ]} << ['Родитель', 0]
  end

end