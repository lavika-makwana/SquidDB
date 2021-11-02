class Season < ApplicationRecord
	belongs_to :content
	has_many :episodes
end
