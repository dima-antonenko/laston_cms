module Site
  module SCart
    class Destroy

      def initialize(cart)
        @cart = cart
      end

      def main
       
      end


      private


      def add_static_data_to_order
        @order.customer_name  = @order_params[:customer_name]
        @order.customer_email = @order_params[:customer_email]
        @order.customer_phone = @order_params[:customer_phone]
        @order.customer_sity  = @order_params[:customer_sity]
        @order.total_price    = @cart.total_price      
      end

      
      def add_items_to_order
         @cart.line_items.each do |item|
          item.update(order_id: @order.id, cart_id: nil)
          item.save
        end
        @cart.destroy 
      end

   

    end
  end
end
