class Restaurant < ApplicationRecord
  has_many :menus, dependent: :destroy
  has_many :users, dependent: :destroy

  validates :nom, presence: true
  validates :adresse, presence: true
  validates :categorie, presence: true
end
