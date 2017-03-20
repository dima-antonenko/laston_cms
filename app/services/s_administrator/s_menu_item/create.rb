module SAdministrator
  module SMenuItem
    class Create


      def initialize(menu_item, params)
        @menu_item = menu_item
        @params = params.require(:menu_item)
      end


      def main
        @menu_item.title        = @params[:title]
        @menu_item.menu_id        = @params[:menu_id]
        @menu_item.url          = @params[:url]
        @menu_item.menu_item_id = @params[:menu_item_id]
        @menu_item.position     = @params[:position]
      end


    end
  end
end