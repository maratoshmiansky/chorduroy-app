class UserChordSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chord_id, :catalog
end
