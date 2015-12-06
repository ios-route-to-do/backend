class RoutePlace < ActiveRecord::Base
  belongs_to :route
  belongs_to :place
end
