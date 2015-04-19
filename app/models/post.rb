class Post < ActiveRecord::Base
	before_save :set_keywords, :set_amazon_id
	default_scope -> { order(created_at: :desc) }
	scope :search, ->(keyword){ where('keywords LIKE ?', "%#{keyword.downcase}%") if keyword.present? }
	validates :title, presence: true
	validates :price, presence: true
	validates :amazon_link, presence: true
	validates :body, presence: true, length: { maximum: 400 }

	protected
		def set_amazon_id
			if amazon_link
				self.amazon_id = find_asid(amazon_link)
			end
		end

		def find_asid(link)
		  #short_link or long_link
		  matched = link.match(/\/gp\/product\/(.+)/) || link.match(/\/dp\/(.+)\//) 
		  matched[1] if matched
		end

		def set_keywords
			self.keywords = [title, price.to_s, body].map(&:downcase).join(" ")
		end
end
