class Industry < ApplicationRecord
  has_many :cars, dependent: :destroy

  validates :name, presence: true, uniqueness: true
end
