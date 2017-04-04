class Administrators::ProductQuestionsController < AdministratorsController


  before_action :set_product_question, only: [:show, :destroy]


  def index
    @product_questions = ProductQuestion.all.paginate(:page => params[:page], :per_page => 20)
  end

  def show
    @product = @product_question.product
  end

  def destroy
    @product_question.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Вопрос удален' }
    end
  end


  private


  def set_product_question
    @product_question = ProductQuestion.find(params[:id])
  end

end