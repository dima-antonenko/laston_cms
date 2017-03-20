class Administrators::BackCallsController < AdministratorsController


  before_action :set_back_call, only: [:destroy]


  def index
    @back_calls = BackCall.all
  end


  def destroy
    @back_call.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'заявка удалена' }
    end
  end


  private


  def set_back_call
    @back_call = BackCall.find(params[:id])
  end

end