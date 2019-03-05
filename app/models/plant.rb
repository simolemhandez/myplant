class Plant < ApplicationRecord
  has_many :transactions
  belongs_to :user
  validates :name, presence: true, uniqueness: true
end
