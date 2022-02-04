class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :car
  validates :start_time, :end_time, presence: true
end