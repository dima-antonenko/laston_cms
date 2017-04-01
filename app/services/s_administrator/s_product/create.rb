module SAdministrator
  module SProduct
    class Create

      def initialize(params)
        @product = Product.new
        @params  = params
      end

      def main
        set_static
        if @product.save
          return @product
        else
          false
        end
      end


      private


      def set_static
        @product.active              = @params[:product][:active].to_i
        @product.name                = @params[:product][:name]
        @product.product_category_id = @params[:product][:product_category_id].to_i
        @product.price               = @params[:product][:price].to_i
        @product.description         = @params[:product][:description]
        @product.avatar              = @params[:product][:avatar]
        @product.slug                = @params[:product][:slug]
        @product.stock               = @params[:product][:stock]
        @product.qty                 = @params[:product][:qty]
      end

    end
  end
end
