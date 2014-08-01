class Category < ActiveRecord::Base
	has_many :projects, dependent: :restrict_with_error
end
