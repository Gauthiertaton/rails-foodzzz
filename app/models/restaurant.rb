class Restaurant < ApplicationRecord
  has_many :menus, dependent: :destroy
  has_many :users, dependent: :destroy

  has_one_attached :photo
end
