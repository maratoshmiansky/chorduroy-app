class ChordSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :chord_root, :alteration, :quality, :option
end
