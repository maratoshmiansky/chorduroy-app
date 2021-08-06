class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :user_chords
  has_many :chords, through: :user_chords
end
