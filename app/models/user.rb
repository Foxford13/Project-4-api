class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :conversations_send, class_name: "Conversation", foreign_key: "sender_id"
  has_many :conversations_received, class_name: "Conversation", foreign_key: "receiver_id"
  validates :username, presence: true
  validates :email, uniqueness: true, presence: true
end
