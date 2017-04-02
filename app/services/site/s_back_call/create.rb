module Site
  module SBackCall
    class Create

      def initialize(params)
        @product = Product.find(params[:back_call][:product_id]) rescue nil
        @phone   = params[:back_call][:phone]
      end


      def main
        if @product.active and @phone.empty? != true
          BackCall.create(product_id: @product.id, phone: @phone)
        else
          false
        end
      end

    end
  end
end
