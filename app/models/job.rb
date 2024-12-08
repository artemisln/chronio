class Job < ApplicationRecord
  belongs_to :user
  validates :name, :description, :salary, :location, presence: true
  validates :description, length: { maximum: 150 }
end
