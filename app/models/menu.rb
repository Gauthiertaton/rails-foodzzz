class Menu < ApplicationRecord
  belongs_to :restaurant, dependent: :destroy
  has_many :orders, dependent: :destroy
end
