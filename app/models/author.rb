class Author < ActiveRecord::Base
	has_many :posts

	def name
		"#{first_name}_#{last_name}"
	end
end
