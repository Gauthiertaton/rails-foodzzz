class Menu < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :restaurant_id, presence: true, uniqueness: true
  validates :nom, presence: true
  validates :description, presence: true
end
