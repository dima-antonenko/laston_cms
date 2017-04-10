class Site::ProductQuestionsController < SiteController
  

  def create
    notice = Site::SProductQuestion::Create.new(params).main
    respond_to do |format|
     format.html { redirect_to :back, notice: notice }
    end
  end

end
