class User < ActiveRecord::Base
  validates_presence_of :userName, :firstName, :lastName, :Email, :phone, :password
end
