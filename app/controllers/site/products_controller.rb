class Site::ProductsController < SiteController



	def show
		@product = Product.friendly.find(params[:id])
    @attacments = ProductAttachment.where(product_id: @product.id)
    @random_products = Product.limit(5)
    
    @product_question = ProductQuestion.new
    @back_call = BackCall.new
    @form_request = FormRequest.new

    render theme_path('product')
	end

end