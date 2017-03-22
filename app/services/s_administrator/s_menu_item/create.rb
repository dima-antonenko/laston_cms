module SAdministrator
  module SMenuItem
    class Create


      def initialize(params)
        @menu_item = MenuItem.new
        @params = params.require(:menu_item)
      end

      def main
        add_attributes
        if @menu_item.save
          return @menu_item
        else
          return false
        end  
      end  

      def add_attributes
        @menu_item.title        = @params[:title]
        @menu_item.menu_id      = @params[:menu_id]
        @menu_item.url          = @params[:url]
        @menu_item.menu_item_id = @params[:menu_item_id].to_i
        @menu_item.position     = @params[:position]
      end

    end
  end
end