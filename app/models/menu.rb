class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy

  has_one_attached :photo
end
