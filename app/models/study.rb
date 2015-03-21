class Study < ActiveRecord::Base
  validates :title, :text, presence: true
  validates :user_id, numericality: {greater_than_or_equal_to: 5}, uniqueness: true
end
