class Transaction < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :plant_id, presence: true
  validates :plant_id, uniqueness: { scope: :plant_id }
  validates :user_id, presence: true
  validates :user_id, uniqueness: { scope: :user_id }
  validates :time, presence: true, uniqueness: true
  validates :date, presence: true, uniqueness: true
end
