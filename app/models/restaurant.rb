class Restaurant < ApplicationRecord

  # associations
  has_many :menus, dependent: :destroy
  has_many :users, dependent: :destroy

  has_one_attached :photo
  has_one_attached :logo

  # validations
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  # Setup gem geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
