require 'test_helper'

class UserAddressTest < ActiveSupport::TestCase
test "creates a valid record" do
userAddress = UserAddress.new
userAddress.userName = "HSimpson"
userAddress.streetAddress = ["742 Evergreen Terrace"].join("<br>")
userAddress.City = "Springfield"
userAddress.State = "Oregon"
userAddress.Zip = "12345"

assert userAddress.save
end
test "should not save unless userName is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:userName].include?("can't be blank")
end
test "should not save unless streetAddress is filled in" do
userAddress = UserAddress.new
assert !userAddress.save # save should fail because there are errors.
assert userAddress.errors[:streetAddress].include?("can't be blank")
end
test "should not save unless City is filled in" do
userAddress = UserAddress.new
assert !userAddress.save # save should fail because there are errors.
assert userAddress.errors[:City].include?("can't be blank")
end
test "should not save unless State is filled in" do
userAddress = UserAddress.new
assert !userAddress.save # save should fail because there are errors.
assert userAddress.errors[:State].include?("can't be blank")
end
test "should not save unless Zip is filled in" do
userAddress = UserAddress.new
assert !userAddress.save # save should fail because there are errors.
assert userAddress.errors[:Zip].include?("can't be blank")
end
end

