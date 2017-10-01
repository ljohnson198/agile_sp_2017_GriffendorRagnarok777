class User < ActiveRecord::Base
  validates_presence_of :userName, :firstName, :lastName, :Email, :phone, :password
  validates :userName, presence: true, uniqueness: true
  validates :Email, presence: true, uniqueness: true
  validates_format_of :Email, :with => /.+@.+\..+/i
end
