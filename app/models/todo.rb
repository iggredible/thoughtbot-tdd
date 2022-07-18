class Todo < ApplicationRecord
  def completed?
    # !self.completed_at.nil?    
    completed_at? # active_record
  end
end
