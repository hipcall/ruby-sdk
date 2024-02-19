require "test_helper"

class CompaniesResourceTest < Minitest::Test
	def test_create_tags
		body = {tags: ["abc", "def"]}
    stub = stub_request("companies/1/tags", method: :post, body: body, response: stub_response(fixture: "companies/create_tags", status: 200))
    client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    tags = client.companies.create_tags(company_id: 1, **body)

    assert_equal HipcallSdk::Collection, tags.class
		assert_equal HipcallSdk::Tag, tags.data.first.class
    assert_equal "abc", tags.data.first.name
	end
  
  def test_delete_tags
    company_id = 1
    tag_id = 1
    stub = stub_request("companies/#{company_id}/tags/#{tag_id}", method: :delete, response: stub_response(fixture: "companies/delete_tag"))
    client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
    
    assert client.companies.delete_tags(company_id: company_id, tag_id: tag_id)
  end
end
