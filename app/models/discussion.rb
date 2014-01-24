class Discussion < ActiveRecord::Base
  belongs_to :project
	validates_length_of :title, minimum: 10, message: ", the title must be at least 10 characters"
	validates :title, presence: true, uniqueness: true
	validates :description, presence: true

end
