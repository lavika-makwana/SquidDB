class Season < ApplicationRecord
	belongs_to :content
	has_many :episodes, inverse_of: :season
  accepts_nested_attributes_for :episodes, reject_if: :all_blank, allow_destroy: true
end
