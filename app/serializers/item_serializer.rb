class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :brand, :super_type, :sub_type, :short_description, :price, :full_description
  belongs_to :user
end
