# frozen_string_literal: true

require "test_helper"

class CommentsResourceTest < Minitest::Test
	def test_create
		body = {commentable_type: "contact", commentable_id: 720, content: "**bla** bold"}
    stub = stub_request("comments", method: :post, body: body, response: stub_response(fixture: "comments/create", status: 201))
    client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    comment = client.comments.create(**body)

    assert_equal HipcallSdk::Comment, comment.class
    assert_equal "**bla** bold", comment.content
	end
end
