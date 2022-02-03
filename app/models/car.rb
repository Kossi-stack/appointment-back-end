class Car < ApplicationRecord
  belongs_to :industry, optional: true
  has_many :appointments, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
