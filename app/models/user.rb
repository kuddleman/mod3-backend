class User < ApplicationRecord
  has_secure_password
  has_many :playlists
  validates :email, presence: true
  validates :username, presence: true
end