class Todo < ApplicationRecord
  def completed?
    completed_at.present?
  end

  def not_completed?
    !completed?
  end
end
