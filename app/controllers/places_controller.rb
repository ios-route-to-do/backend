class PlacesController < ApplicationController

  def search
    render json: Place.search(params)
  end

end
