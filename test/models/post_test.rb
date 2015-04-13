require 'test_helper'

class PostTest < ActiveSupport::TestCase
	def setup
		@post = Post.new(title: "Example", price: 99, body: "This is an example text", amazon_link: "http://www.amazon.com/gp/product/B00BGIQS1A")
	end

	test "title should be present" do
		@post.title = "    "
		assert_not @post.valid?
	end

	test "price should be present" do
		@post.price = nil
		assert_not @post.valid?
	end

	test "body should be present" do
		@post.body = "              "
		assert_not @post.valid?
	end

	test "body should not exceed 140 words" do
		@post.body = "a" * 141
		assert_not @post.valid?
	end

	test "amazon_link should be present" do
		@post.amazon_link = ""
		assert_not @post.valid?
	end

	test "posts come out ordered by most recent" do
		assert_equal Post.first, posts(:most_recent)
	end

	test "amazon_id is generated from new post" do
		@post.save
		assert_equal @post.amazon_id, "B00BGIQS1A"
	end
end
