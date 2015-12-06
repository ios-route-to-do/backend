class UsersController < ApplicationController
  def login
    render json: User.find_by!(email: params[:email])
  end

  def register
    user = User.find_by(email: params[:email])

    if user
      render json: 'User already registered', status: 403
    else
      render json: User.create!(user_params)
    end
  end

  def favorites
    user = User.find(params[:id])

    render json: user.favorite_routes
  end

  def outings
    user = User.find(params[:id])

    render json: user.outing_routes
  end

  def routes
    user = User.find(params[:id])

    render json: user.routes
  end

  private

  def user_params
    params.require(:email)
    params.permit(:username, :location, :first_name, :last_name, :profile_image_url, :email)
  end
end
