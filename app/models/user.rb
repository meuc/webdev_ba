class User < ApplicationRecord
  include Clearance::User

  has_and_belongs_to_many :belts
  has_many :notes
  has_one :belt_application

  def has_belt?(belt)
    belts.include? belt
  end

  def current_belt
    belts.sort_by_kup.last
  end

  def next_belt
    next_belt_index = Belt.sort_by_kup.index(current_belt) + 1
    Belt.sort_by_kup[next_belt_index]
  end

  def give_next_belt
    return if next_belt.nil?
    self.belts << next_belt
  end
end
