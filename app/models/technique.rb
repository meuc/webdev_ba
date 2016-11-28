class Technique < ApplicationRecord
  belongs_to :belt
  has_many :notes

  validates :belt, :name, :topic, :description, presence: true

  enum topic: {
    sugisul: 0,
    joksul: 1,
  }
end
