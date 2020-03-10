class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :orders, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true
  validates :description, presence: true
end
