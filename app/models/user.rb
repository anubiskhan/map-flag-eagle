class User < ApplicationRecord
  validates_presence_of :name, :email, :role, :google_sso_token
  validates_uniqueness_of :email

  has_many :contacts
end
