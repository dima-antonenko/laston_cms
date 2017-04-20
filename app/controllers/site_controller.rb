class SiteController < ApplicationController

  before_action  :all_pages_data


  layout "site"

  def all_pages_data
    @footer_menu_items = Menu.find_by(descriptor: 'footer_menu').menu_items

  end

end