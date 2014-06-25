require 'test_helper'

class ListTest < ActiveSupport::TestCase
  test 'test that list has name' do
    list = lists(:one)
    assert_equal 'MyString', list.name
  end
end
