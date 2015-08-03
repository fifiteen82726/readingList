class Book < ActiveRecord::Base

	belongs_to :genre 


	scope :finished, ->{ where('finished_on IS NOT NULL') }
	#scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }


	before_save :set_keywords

  	

	def self.recent
		where('finished_on>?', 2.days.ago)

	end
 
	def finished?
		finished_on.present?
	end


	protected
	def set_keywords
		#self.keywords = [ title, author, description].map {|p|.downcase}.join(' ')
		self.keywords = [title, author, description].map(&:downcase).join(' ')
		
	end
	# def self.search(keyword) 
	# 	if keyword.present?
	# 		where(title: keyword)
	# 	else 
	# 		self.all 
	# 	end


		
	# end
end
