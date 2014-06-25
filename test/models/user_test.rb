require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'test that user has name' do
    user = users(:one)
    assert_equal 'MyString', user.name
  end
end
