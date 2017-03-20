class SiteController < ApplicationController

  layout "site"

  def home
    render 'site/static_pages/home'
  end

end