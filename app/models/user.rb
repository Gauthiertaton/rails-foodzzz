class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :restaurant, dependent: :destroy
  has_many :orders

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :restaurant_id, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :restaurant
end
