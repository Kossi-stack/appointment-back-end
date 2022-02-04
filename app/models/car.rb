class Car < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  validates :name, :model, :engine, :seats, :price, :image, presence: true
end