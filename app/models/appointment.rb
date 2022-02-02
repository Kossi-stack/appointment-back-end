class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :user, presence: true
  validates :car, presence: true
end
