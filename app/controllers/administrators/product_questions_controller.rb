class Administrators::ProductQuestionsController < AdministratorsController


  before_action :set_product_question, only: [:show, :destroy]


  def index
    @product_questions = ProductQuestion.all
  end

  def show
    
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