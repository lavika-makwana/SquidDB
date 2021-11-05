class Content < ApplicationRecord
	has_many :seasons
	scope :content_types_list, lambda {where.not(types: nil).pluck(:types).uniq}
end
