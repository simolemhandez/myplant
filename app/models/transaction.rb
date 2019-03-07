class Transaction < ApplicationRecord
  belongs_to :plant
  belongs_to :user
  validates :plant_id, presence: true
  validates :user_id, presence: true
  validates :time, presence: true
  validates :date, presence: true
  validates :confirmed, default: false
  # validates :rating, scope: {1, 2, 3, 4, 5}

  def self.received_by(user)
    Transaction.all.select { |transaction| transaction.user == user }
  end
end
