class Todo < ActiveRecord::Base
  belongs_to :list
  has_one :user, through: :list

  def late?
    DateTime.now > due_date && !completed
  end
end
