class Item < ApplicationRecord
  belongs_to :user
    has_many :conversations, class_name: "Conversation", foreign_key: "item_id"
      mount_uploader :image, ImageUploader
end
