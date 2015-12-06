class ImagesController < ApplicationController
  def show
    image = Image.find(params[:id])
    send_file(image.attachment.path,
      filename: image.attachment_file_name,
      type: image.attachment_content_type,
      disposition: 'attachment'
    )
  end

  def create
    Image.create!(image_params)
  end

  private

  def image_params
    params.require(:attachment)
    params.permit(:attachment)
  end
end
