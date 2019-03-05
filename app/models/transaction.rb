class Transaction < ApplicationRecord
  belongs_to :plant
  validates :plant_id, presence: true
  validates :plant_id, uniqueness: { scope: :plant_id }
  validates :tenant_id, presence: true
  validates :tenant_id, uniqueness: { scope: :user_id }
  validates :time, presence: true, uniqueness: true
  validates :date, presence: true, uniqueness: true
end
