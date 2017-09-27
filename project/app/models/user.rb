class User < ActiveRecord::Base
  validates_presence_of :userName, :firstName, :lastName, :Email, :phone, :password
  validates :userName, presence: true, uniqueness: true
end
