class Contact < ApplicationRecord
  validates :mail, presence: true
  validates :message, presence: true 
end
