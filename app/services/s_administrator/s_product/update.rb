module SAdministrator
  module SProduct
    class Update

      def initialize(product, params)
        @product = product
        @params  = params
      end

      def main
        set_static
        set_attachments
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

      def set_attachments
        if @params[:images]
          @params[:images].each do |image|
            ProductAttachment.create(product_id: @product.id, image: image)
          end
          attachments = ProductAttachment.where(product_id: @product.id)
          attachments.each do |attachment|
            @product.gallery << attachment.image
          end  
        end
      end


    end
  end
end
