class Belt < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :techniques

  def self.sort_by_kup
    all.sort_by do |belt|
      [
        "Mu Kup",
        "9. Kup",
        "8. Kup",
        "7. Kup",
        "6. Kup",
        "5. Kup",
        "4. Kup",
        "3. Kup",
        "2. Kup",
        "1. Kup",
        "Dan",
      ].index(belt.degree)
    end
  end
end
