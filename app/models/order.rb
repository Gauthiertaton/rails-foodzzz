class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  has_one_attached :qr_code

  validates :status, presence: true, inclusion: { in: ["En cours", "Terminée"] }
end
