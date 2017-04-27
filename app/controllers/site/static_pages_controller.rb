class Site::StaticPagesController < SiteController

  def home
    @page = Page.find_by(descriptor: 'home')
    @slides = Slider.find_by(descriptor: 'main').slides
    @new_products = Product.last(5)
    @cheap_products = Product.order(:price).limit(5)
    render theme_path('home')
  end

  def contacts
    @page = Page.find_by(descriptor: 'contacts')
    render theme_path('static_page')
  end

  def company_info
    @page = Page.find_by(descriptor: 'company_info')
    render theme_path('static_page')
  end

  def delivery_info
    @page = Page.find_by(descriptor: 'delivery_info')
    render theme_path('static_page')
  end

  def payment_info
    @page = Page.find_by(descriptor: 'payment_info')
    render theme_path('static_page')
  end

  def terms_of_service
    @page = Page.find_by(descriptor: 'terms_of_service')
    render theme_path('static_page')
  end


end