class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :jwt_authenticatable, jwt_revocation_strategy: JwtDenylist

  has_many :appointments, dependent: :destroy
  has_many :industries, dependent: :destroy
  has_many :cars, dependent: :destroy
  validates :email, uniqueness: true
end
