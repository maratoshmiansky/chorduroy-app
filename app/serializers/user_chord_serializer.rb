class UserChordSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chord_id, :catalog

  belongs_to :user
  belongs_to :chord
end
