require 'test_helper'

class PostTest < ActiveSupport::TestCase
	def setup
		@post = Post.new(title: "Example", price: 99, body: "This is an example text", amazon_link: "http://www.amazon.com/gp/product/B00BGIQS1A")
	end

	# test "title should be present" do
	# end

	test "posts come out ordered by most recent" do
		assert_equal Post.first, posts(:most_recent)
	end

	test "amazon_id is generated from new post" do
		@post.save
		assert_equal @post.amazon_id.exists?, "B00BGIQS1A"
	end
end
