class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy


  has_one_attached :photo

  validates :restaurant_id, presence: true, uniqueness: true
  validates :nom, presence: true
  validates :description, presence: true

end
