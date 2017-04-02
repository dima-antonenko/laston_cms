class Site::BackCallsController < SiteController

  def create
    result = Site::SBackCall::Create.new(params).main
    respond_to do |format|
      if result
        format.html { redirect_to :back, notice: "Заявка отправлена" }
      else
        format.html { redirect_to :back, notice: "Произошла ошибка" }
      end  
    end
  end

end
