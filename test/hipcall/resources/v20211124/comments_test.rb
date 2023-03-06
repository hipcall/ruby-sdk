# frozen_string_literal: true

require "test_helper"

class CommentsResourceTest < Minitest::Test
	def test_create_a_comment
		# stub = stub_request(
		# 				"comments",
		# 				response: stub_response(
		# 					fixture: "comments/retrieve",
		# 					status: 201,
		# 				),
		# 				method: :post,
		# 				body: [commentable_type: "contact", commentable_id: 720, content: "**bla** bold"]
		# )

		# client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		# comment = client.comments.create(commentable_type: 'contact', commentable_id: 1, content: '**bla** bold')
	
		# assert_equal HipcallSdk::Comment, comment.class
		# assert_equal "**bla** bold", comment.content
	end
end
