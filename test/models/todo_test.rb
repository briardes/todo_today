require 'test_helper'

class TodoTest < ActiveSupport::TestCase
 test 'test that todo has name' do
  todo = todos(:one)
  assert_equal 'MyString', todo.name
 end

  test 'test that todo has due_date' do
    todo = todos(:one)
    assert todo.due_date
  end

  test 'test that todo can be completed' do
    todo = todos(:one)
    assert_equal true, todo.completed
  end

  test 'test that todo method late? works' do
    todo = todos(:three)
    assert_equal true, todo.late?
  end
end
