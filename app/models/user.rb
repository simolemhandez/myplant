class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :transactions
  has_many :plants
  validates :name, presence: true, uniqueness: true
  validates :name, presence: true, uniqueness: true
  validates :contact, presence: true, uniqueness: true
end
