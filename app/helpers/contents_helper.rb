module ContentsHelper

	def certificates
		%w[U UA AS]
	end

	def content_types
		Content.where.not({name: [nil, ""]}).pluck(:types).uniq
	end
end
