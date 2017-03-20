module Site
  module SFormRequest
    class Create

      def initialize(params)
        @params = params[:form_request]
        @form_request = FormRequest.new
      end

      def main
        set_static
        check_save
      end


      private


      def set_static
        @form_request.name  = @params[:name]
        @form_request.email = @params[:email]
        @form_request.phone = @params[:phone]
        @form_request.text  = @params[:text]
      end

      def check_save
        if @form_request.save
          'Спасибо, ваш запрос сохранен'
        else
          'Произошла ошибка'
        end
      end

      

    end
  end
end
