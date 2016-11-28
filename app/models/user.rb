class User < ApplicationRecord
  include Clearance::User

  has_and_belongs_to_many :belts
  has_many :notes

  def has_belt?(belt)
    belts.include? belt
  end
end
