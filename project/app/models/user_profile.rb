class UserProfile < ActiveRecord::Base
  validates_presence_of :userName, :age, :gender, :streetAddress, :City, :State, :Zip
  validates :userName, presence: true, uniqueness: true
end
