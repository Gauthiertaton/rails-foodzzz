class Order < ApplicationRecord
  belongs_to :user
  belongs_to :menu

  validates :menu_id, presence: true, uniqueness: true
  validates :user_id, presence: true, uniqueness: true
  validates :status, presence: true

end
