class Note < ApplicationRecord
  belongs_to :technique
  belongs_to :user

  validates :text, presence: true
end
