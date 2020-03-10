class Restaurant < ApplicationRecord
  has_one_attached :photo
  has_many :menus
  has_many :users
end
