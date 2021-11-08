class Content < ApplicationRecord
	has_many :seasons, inverse_of: :content
  accepts_nested_attributes_for :seasons, reject_if: :all_blank, allow_destroy: true
  
	scope :content_types_list, lambda {where.not(types: nil).pluck(:types).uniq}
end
