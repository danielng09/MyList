module PostsHelper
	def image_from_amazon(amazon_id)
		image_tag "http://images.amazon.com/images/P/#{amazon_id}.01.ZTZZZZZZ.jpg"
	end

	# def decimal_adder(price)
	# 	matched = price.to_s.match(/\.(.+)/)[1]
	# 	until matched.count >= 2
	# 		price += "0"
	# 		matched += "0"
	# 	end
	# 	price
	# end
end
