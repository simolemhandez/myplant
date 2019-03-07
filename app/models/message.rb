class Message < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  def self.received_by(user)
    Message.all.select { |message| message.plant.user == user }
  end
end
