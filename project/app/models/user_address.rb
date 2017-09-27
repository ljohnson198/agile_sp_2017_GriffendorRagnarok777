class UserAddress < ActiveRecord::Base
      validates_presence_of :userName, :streetAddress, :City, :State, :Zip
      validates :userName, presence: true, uniqueness: true
end
