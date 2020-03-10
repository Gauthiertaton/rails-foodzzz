class Menu < ApplicationRecord
  has_one_attached :photo
  belongs_to :restaurant, dependent: :destroy
  has_many :orders, dependent: :destroy
end
