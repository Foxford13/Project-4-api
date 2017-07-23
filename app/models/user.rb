class User < ApplicationRecord
  has_secure_password
  has_many :items_created, class_name: "Item", foreign_key: "user_id"
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
  has_many :conversations, class_name: "Conversation", foreign_key: "sender_id"
end
