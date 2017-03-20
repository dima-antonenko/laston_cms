class Site::ProductsController < SiteController

	def show
		@product = Site::ProductDecorator.decorate(Product.find(params[:id]))
	end

end