require 'test_helper'

class UserTest < ActiveSupport::TestCase
test "creates a valid record" do
user = User.new
user.userName = "HSimpson"
user.firstName = ["Homer"].join("<br>")
user.lastName = "Simpson"
user.Email = "hsimpson@me.com"
user.phone = "555-555-5555"
user.password = "homer"
assert user.save
end
test "should not save unless userName is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:userName].include?("can't be blank")
end
test "should not save unless firstName is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:firstName].include?("can't be blank")
end
test "should not save unless lastName is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:lastName].include?("can't be blank")
end
test "should not save unless Email is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:Email].include?("can't be blank")
end
test "should not save unless Phone is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:phone].include?("can't be blank")
end
test "should not save unless password is filled in" do
user = User.new
assert !user.save # save should fail because there are errors.
assert user.errors[:password].include?("can't be blank")
end
end
