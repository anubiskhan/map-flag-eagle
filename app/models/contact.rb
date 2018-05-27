class Contact < ApplicationRecord
  validates_presence_of :address
  belongs_to :user
end
