class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  validates :status, presence: true, inclusion: { in: ["en cours", "terminée"] }
end
