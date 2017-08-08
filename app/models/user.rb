class User < ApplicationRecord
  has_secure_password validations: false
  has_many :items
  has_many :messages
  mount_uploader :image, ImageUploader
  # has_many :conversations
  has_many :conversations_sent, class_name: "Conversation", foreign_key: "sender_id"
  has_many :conversations_received, class_name: "Conversation", foreign_key: "receiver_id"
  validates :username, presence: true

  has_and_belongs_to_many :items_watched, class_name: "Item", join_table: "items_users"
  validates :email, presence: true, uniqueness: true, unless: :oauth_login?
  validates :password, presence: true, confirmation:true, unless: :oauth_login?

  def oauth_login?
    github_id.present? || facebook_id.present?
  end

end
