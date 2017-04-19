class Site::StaticPagesController < SiteController

  def home
    @page = Page.find_by(descriptor: 'home')
  end

  def contacts
    @page = Page.find_by(descriptor: 'contacts')
    render 'static_page'
  end

  def company_info
    @page = Page.find_by(descriptor: 'company_info')
    render 'static_page'
  end

  def delivery_info
    @page = Page.find_by(descriptor: 'delivery_info')
    render 'static_page'
  end

  def payment_info
    @page = Page.find_by(descriptor: 'payment_info')
    render 'static_page'
  end

  def terms_of_service
    @page = Page.find_by(descriptor: 'terms_of_service')
    render 'static_page'
  end


end