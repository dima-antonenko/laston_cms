class Site::BackCallsController < SiteController

  def create
  	notice = Site::SBackCall::Create.new(params).main
    respond_to do |format|
     format.html { redirect_to :back, notice: notice }
    end
  end

end