# frozen_string_literal: true

require "test_helper"

class CdrsResourceTest < Minitest::Test
	def test_list
		stub = stub_request("cdrs", response: stub_response(fixture: "cdrs/list"))
		client = Hipcall::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		cdrs = client.cdrs.list
	
		assert_equal Hipcall::Collection, cdrs.class
		assert_equal Hipcall::Cdr, cdrs.data.first.class
	end
end
