class Order < ApplicationRecord

  # associations
  belongs_to :user
  belongs_to :menu

  # validations
  # status just can be ["En cours", "Terminée"]
  validates :status, presence: true, inclusion: { in: ["En cours", "Terminée"] }
end
