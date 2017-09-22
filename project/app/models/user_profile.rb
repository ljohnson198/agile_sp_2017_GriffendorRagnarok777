class UserProfile < ActiveRecord::Base
    validates_presence_of :userName, :gender
end
