class Site::ProductsController < SiteController

	def show
		@product = Product.friendly.find(params[:id])
	end

end