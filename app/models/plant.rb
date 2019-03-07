class Plant < ApplicationRecord
  has_many :transactions
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def rating
    sum = 0
    transactions.each do |t|
      if t.rating.nil?
        sum = sum
      else
        sum += t.rating
      end
    end
    if transactions.count == 0
      return 0
    else
      return sum / transactions.count
    end
  end
end
