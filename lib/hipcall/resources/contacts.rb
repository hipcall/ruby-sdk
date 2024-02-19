module HipcallSdk
	class ContactResource < Resource
    def create_tags(contact_id:, **attributes)
      response = post_request("contacts/#{contact_id}/tags", body: attributes)
			Collection.from_response(response, key: "data", type: Tag)
    end
    
    def delete_tags(contact_id:, tag_id:)
      delete_request("contacts/#{contact_id}/tags/#{tag_id}")
    end

    def create_comment(contact_id:, **attributes)
      response = post_request("contacts/#{company_id}/comments", body: attributes)
      Comment.new response.body.dig("data")
    end
	end
end
