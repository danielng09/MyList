require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "posts come out ordered by most recent" do
		assert_equal Post.first, posts(:most_recent)
	end
end
