class RoutesController < ApplicationController
  def trending
    render json: Route.trending(limit: params[:limit])
  end

  def new
    render json: Route.newly_created(limit: params[:limit])
  end

  def rate
    render json: Rating.rate(*user_route_params.merge(rating: params[:rating]).values)
  end

  def finish
    render json: Outing.create(user_route_params)
  end

  def favorite
    Favorite.find_or_create_by(user_route_params)

    head :no_content
  end

  def unfavorite
    favorite = Favorite.find_by(user_route_params)
    if favorite
      favorite.destroy

      head :no_content
    else
      head :not_found
    end
  end

  private
  def user_route_params
    {user_id: params[:user_id], route_id: params[:id]}
  end
end
