class Administrators::FormRequestsController < AdministratorsController


  before_action :set_form_request, only: [:show, :destroy]


  def index
    @form_requests = FormRequest.all
  end

  def show
    
  end

  def destroy
    @form_request.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Объект удален' }
    end
  end


  private


  def set_form_request
    @form_request = FormRequest.find(params[:id])
  end

end