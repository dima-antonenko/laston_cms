module Site
  module SBackCall
    class Create

      def initialize(params)
        @product_id = params[:back_call][:product_id].to_i
        @phone      = params[:back_call][:phone]
      end

      def main
        if check_product
          set_static
        else
          "произошла ошибка"
        end
      end


      private


      def set_static
        product = Product.friendly.find(@product_id)
        item = BackCall.new(product_id: product.id, product_sku: product.sku, product_name: product.name, phone: @phone)
        if item.save
          "Информация сохранена"
        else
          "Произошла ошибка"  
        end  
      end

      def check_product
        if Product.friendly.find(@product_id)
          true
        else
          false
        end
      end

      

    end
  end
end
