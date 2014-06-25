class Todo < ActiveRecord::Base
  def late?
    if DateTime.now > self.due_date && self.completed == false
      true
    else
      false
    end
  end
end
