class Menu < ApplicationRecord

  # associations
  belongs_to :restaurant
  has_many :orders, dependent: :destroy

  has_one_attached :photo

  # validations
  validates :name, presence: true
  validates :description, presence: true
end
