class Vehicle < ActiveRecord::Base
  validates_presence_of :userName, :vehicleType, :maxRiders
end
