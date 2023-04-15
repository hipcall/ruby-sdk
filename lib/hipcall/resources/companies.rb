module HipcallSdk
	class CompanyResource < Resource
    def create_tags(company_id:, **attributes)
      response = post_request("companies/#{company_id}/tags", body: attributes)
			Collection.from_response(response, key: "data", type: Tag)
    end
    
    def delete_tags(company_id:, tag_id:)
      delete_request("companies/#{company_id}/tags/#{tag_id}")
    end
	end
end
