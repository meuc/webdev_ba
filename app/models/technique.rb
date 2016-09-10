class Technique < ApplicationRecord
  belongs_to :belt
	has_many :notes
	
	enum topic: {
		sugisul: 0,
		joksul: 1,
	}
end
