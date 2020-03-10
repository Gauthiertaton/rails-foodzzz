class Restaurant < ApplicationRecord
  has_one_attached :photo
  has_many :menus, dependent: :destroy
  has_many :users, dependent: :destroy
end
