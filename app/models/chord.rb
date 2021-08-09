class Chord < ApplicationRecord
  has_many :user_chords
  has_many :users, through: :user_chords

  alias_attribute :chord_root, :root  # can't use reserved keyword "root" as an attribute
end
