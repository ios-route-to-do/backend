class ApplicationController < ActionController::API
  before_filter :load_user

  private
  def load_user
    @user = User.find(request.headers['X-Jopp-User-Id']) if request.headers['X-Jopp-User-Id']
  end

  def add_user_metatada_to_route(route)
    if @user.present?
      route.favorite = @user.favorite_routes.include?(route)
    else
      route.favorite = false
    end
    route
  end

  def add_user_metadata_to_routes(routes)
    routes.map { |route| add_user_metatada_to_route(route) }
  end

end
