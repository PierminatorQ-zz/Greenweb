class ApplicationController < ActionController::Base
  before_action :set_variables
  

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge
    
    redirect_to lightitems_path
    flash[:notice] = "Foto eliminada exitosamente"
  end

  

def set_variables
 @items = Lightitem.all
end

end
