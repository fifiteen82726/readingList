class Book < ActiveRecord::Base

	has_many :book_genres ,dependent: :destroy
	has_many :genres, through: :book_genres, dependent: :destroy

	scope :finished, ->{ where('finished_on IS NOT NULL') }
	#scope :recent, ->{ where('finished_on > ?', 2.days.ago) }
	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
	scope :filter, ->(name){
	 joins(:genres).where('genres.name = ?', name) if name.present?
	}

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
