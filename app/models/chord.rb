class Chord < ApplicationRecord
  has_many :user_chords
  has_many :users, through: :user_chords
end
