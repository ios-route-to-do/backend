class UsersController < ApplicationController
  def show
    render json: User.find_by!(id: params[:id])
  end

  def login
    render json: User.find_by!(email: params[:email].downcase)
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
    @user = User.find(params[:id])

    render json: add_user_metadata_to_routes(@user.favorite_routes)
  end

  def outings
    @user = User.find(params[:id])

    render json: add_user_metadata_to_routes(@user.outing_routes)
  end

  def routes
    @user = User.find(params[:id])

    render json: add_user_metadata_to_routes(@user.routes)
  end

  private

  def user_params
    params.require(:email)
    params.permit(:username, :location, :first_name, :last_name, :profile_image_url, :email)
  end
end
