class Site::ProductsController < SiteController

	def show
		@product = Product.friendly.find(params[:id])
    
    @product_question = ProductQuestion.new
    @back_call = BackCall.new
	end

end