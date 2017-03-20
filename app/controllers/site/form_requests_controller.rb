class Site::FormRequestsController < SiteController

  def create
  	notice = Site::SFormRequest::Create.new(params).main
    respond_to do |format|
     format.html { redirect_to :back, notice: notice }
    end
  end

end