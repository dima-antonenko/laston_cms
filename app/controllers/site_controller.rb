class SiteController < ApplicationController

  before_action  :all_pages_data

  layout "site"

  def all_pages_data
    @main_menu_items = Menu.find_by(descriptor: 'main_menu').menu_items.where(ancestry: nil)

    @footer_menu_items = Menu.find_by(descriptor: 'footer_menu').menu_items
  end

end