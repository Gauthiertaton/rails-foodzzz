class Restaurant < ApplicationRecord
  has_many :menus, dependent: :destroy
  has_many :users, dependent: :destroy

  has_one_attached :photo

  validates :nom, presence: true
  validates :adresse, presence: true
  validates :categorie, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
