require 'test_helper'

class UserProfileTest < ActiveSupport::TestCase
test "creates a valid record" do
userProfile = UserProfile.new
userProfile.userName = "HSimpson"
userProfile.gender = ["male"].join("<br>")
userProfile.smoking = "false"

assert userProfile.save
end
test "should not save unless userName is filled in" do
userProfile = UserProfile.new
assert !userProfile.save # save should fail because there are errors.
assert userProfile.errors[:userName].include?("can't be blank")
end
test "should not save unless gender is filled in" do
userProfile = UserProfile.new
assert !userProfile.save # save should fail because there are errors.
assert userProfile.errors[:gender].include?("can't be blank")
end
end
