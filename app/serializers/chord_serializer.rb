class ChordSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :root, :alteration, :quality, :option
end
