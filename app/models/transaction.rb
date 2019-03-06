class Transaction < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :plant_id, presence: true
  validates :user_id, presence: true
  validates :time, presence: true
  validates :date, presence: true
  # validates :rating, scope: {1, 2, 3, 4, 5}
end
