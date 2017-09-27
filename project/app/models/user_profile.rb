class UserProfile < ActiveRecord::Base
    validates_presence_of :userName, :gender
    validates :userName, presence: true, uniqueness: true
end
