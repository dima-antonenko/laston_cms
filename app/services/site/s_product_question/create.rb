module Site
  module SProductQuestion
    class Create

      def initialize(params)
        @product_id      = params[:product_question][:product_id]
        @question_params = params[:product_question]
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
        question = ProductQuestion.new(product_id: product.id, product_sku: product.sku, product_name: product.name,
          name: @question_params[:name], phone: @question_params[:phone], text: @question_params[:text])
        if question.save
          "Информация сохранена"
        else
          "Произошла ошибка, заполнены не все поля"
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
