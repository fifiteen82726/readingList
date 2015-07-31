class Book < ActiveRecord::Base

	scope :finished, ->{ where('finished_on IS NOT NULL') }
	#scope :recent, ->{ where('finished_on > ?', 2.days.ago) }

	def self.recent
		where('finished_on>?', 2.days.ago)

	end

	def finished?
		finished_on.present?
	end
end
