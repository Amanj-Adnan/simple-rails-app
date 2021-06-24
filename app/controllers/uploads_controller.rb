class UploadsController < ApplicationController
  def index
    @uploads = current_model.uploads
  end

  def new
    @new_upload = Upload.new
  end

  def create
    @new_upload = current_model.uploads.new(upload_params)
    if @new_upload.save

      redirect_to uploads_path
    else
      render :index
    end
  end


  private

  def upload_params
    params.require(:upload).permit(:title,:tof,:image)
  end
end
