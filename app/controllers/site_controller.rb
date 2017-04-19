class SiteController < ApplicationController

  layout "site"

  def all_pages_data
    @footer_menu_items = Menu.find_by(descriptor: 'footer_menu').menu_items
  end

end