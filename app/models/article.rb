class Article < ActiveRecord::Base
	belongs_to :user
	validates :title, presence:true
	validates :body, presence:true, length:{minimum:40}

	before_create :set_visits

	def add_visit()

		self.update(visits: self.visits+1)
	end
	
	private

	def set_visits
		self.visits = 0
	end
end
