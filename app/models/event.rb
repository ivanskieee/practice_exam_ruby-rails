class Event < ApplicationRecord
  validates :title, presence: true, length: { maximum: 10 }
  validates :content, presence: true, length: { maximum: 20 , minimum: 10 }
  validates :location, presence: true, inclusion: { in: %w(SPC Caluan Tiaong),
  message: "%{value} is not a valid location" }
  validates :end, comparison: {greater_than_or_equal_to: :start, message: "must be greater than or equal to start date"}

end
