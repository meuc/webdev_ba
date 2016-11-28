class Belt < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :techniques

  def self.sort_by_kup
    all.sort_by do |belt|
      [
        "mu kup",
        "9 kup",
        "8 kup",
        "7 kup",
        "6 kup",
        "5 kup",
        "4 kup",
        "3 kup",
        "2 kup",
        "1 kup",
        "dan",
      ].index(belt.degree)
    end
  end
end
