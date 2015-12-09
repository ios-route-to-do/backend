class RoutesController < ApplicationController
  def show
    render json: add_user_metatada_to_route(Route.find(params[:id]))
  end

  def create
    route = Route.find_or_initialize_by(route_params)

    if route.persisted?
      render json: 'Route already exists', status: 409
      return
    end

    ActiveRecord::Base.transaction do
      places_params[:places].each_with_index do |place_params, position|
        place = Place.find_or_initialize_by(place_params)
        route.route_places << RoutePlace.new(place: place, position: position)
      end

      route.save!
      render json: add_user_metatada_to_route(route), status: 201
    end
  rescue ActiveRecord::RecordInvalid
    render json: {errors: route.errors.full_messages}, status: 409
  end

  def update
    route = Route.find(params[:id])

    ActiveRecord::Base.transaction do
      route.assign_attributes(route_params)

      places_params[:places].each_with_index do |place_params, position|
        place = Place.find_or_initialize_by(place_params)
        route.route_places.clear
        route.route_places << RoutePlace.new(place: place, position: position)
      end

      route.save!
      render json: add_user_metatada_to_route(route), status: 201
    end
  rescue ActiveRecord::RecordInvalid
    render json: {errors: route.errors.full_messages}, status: 409
  end

  def trending
    render json: add_user_metadata_to_routes(Route.trending(limit: params[:limit]))
  end

  def new
    render json: add_user_metadata_to_routes(Route.newly_created(limit: params[:limit]))
  end

  def rate
    render json: Rating.rate(*user_route_params.merge(rating: params[:rating]).values)
  end

  def finish
    render json: Outing.create!(user_route_params)
  end

  def favorite
    Favorite.find_or_create_by!(user_route_params)

    head 204
  end

  def unfavorite
    favorite = Favorite.find_by(user_route_params)
    if favorite
      favorite.destroy!

      head 204
    else
      head 404
    end
  end

  private
  def user_route_params
    {user_id: params[:user_id], route_id: params[:id]}
  end

  def route_params
    params.require(:places)
    params.permit(:title, :location, :full_description, :image_url, :user_id)
  end

  def places_params
    params.require(:places)
    params.permit(places: [:name, :full_description, :location, :address, :image_url, :lat, :lng])
  end
end
