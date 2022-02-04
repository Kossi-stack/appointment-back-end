class Car < ApplicationRecord
  validates :name, presence: true

  belongs_to :user
  has_many :appointments, dependent: :destroy
end
