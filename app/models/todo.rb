class Todo < ActiveRecord::Base
  belongs_to :list
  has_one :user, through: :list
  def late?
    if DateTime.now > self.due_date && self.completed == false
      true
    else
      false
    end
  end
end
