module HipcallSdk
	class CommentResource < Resource
		def create(**attributes)
			Comment.new post_request("comments", body: attributes).body.dig("data")
		end
	end
end
