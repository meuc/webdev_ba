class User < ApplicationRecord
  include Clearance::User
	
  has_and_belongs_to_many :belts
	has_many :notes
end
