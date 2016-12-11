class User < ApplicationRecord
  include Clearance::User

  validates :first_name, :last_name, :email, presence: true

  has_and_belongs_to_many :belts
  has_many :notes
  has_one :belt_application

  after_create :give_white_belt

  enum genders: {
    male: 0,
    female: 1,
  }

  def name
    [first_name, last_name].join(" ")
  end

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

  private

  def give_white_belt
    return unless belts.empty?
    self.belts << Belt.sort_by_kup.first
  end
end
