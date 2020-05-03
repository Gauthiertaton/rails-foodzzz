class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_commit :async_update # Run on create & update
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # associations
  belongs_to :restaurant
  has_many :orders, dependent: :destroy
  has_one_attached :photo

  # validations
  validates :first_name, presence: true
  validates :last_name,  presence: true

  private

  def async_update
    UpdateUserJob.perform_later(self.id)
  end
end
