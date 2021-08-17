class ChordSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :chord_root, :alteration, :quality, :option

  has_many :user_chords
  has_many :users, through: :user_chords
end
