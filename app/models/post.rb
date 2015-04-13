class Post < ActiveRecord::Base
	before_save :set_keywords

	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }

	protected
		def set_keywords
			self.keywords = [title, price.to_s, body].map(&:downcase).join(" ")
		end
end
