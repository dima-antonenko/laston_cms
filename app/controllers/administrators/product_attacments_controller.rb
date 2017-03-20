class Administrators::ProductAttacmentsController < AdministratorsController


  def destroy
    ProductAttachment.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Изображение удалено' }
    end
  end

 

end