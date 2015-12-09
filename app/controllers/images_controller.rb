class ImagesController < ApplicationController
  def show
    image = Image.find(params[:id])
    render json: {image_url: image.attachment.url}
  end

  def create
    image = Image.create!(image_params)
    render json: {image_url: image.attachment.url}
  end

  private
  def image_params
    params.require(:attachment)
    params.permit(:attachment)
  end
end
