# frozen_string_literal: true

require "test_helper"

class CdrsResourceTest < Minitest::Test
	def test_list
		stub = stub_request("cdrs", response: stub_response(fixture: "cdrs/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v20211124", adapter: :test, stubs: stub)
		cdrs = client.cdrs.list
	
		assert_equal HipcallSdk::Collection, cdrs.class
		assert_equal HipcallSdk::Cdr, cdrs.data.first.class
	end

	def test_retrieve
		year = 2022
		mounth = 07
		day = 07
		cdr_uuid = "caedfd1b-25ec-447e-ad87-3b7eb3d358ea"
		stub = stub_request("cdrs/#{year}/#{mounth}/#{day}/#{cdr_uuid}", response: stub_response(fixture: "cdrs/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		cdr = client.cdrs.retrieve(year: year, mounth: mounth, day: day, cdr_uuid: cdr_uuid)
	
		assert_equal HipcallSdk::Cdr, cdr.class
		assert_equal "caedfd1b-25ec-447e-ad87-3b7eb3d358ea", cdr.uuid
	end
end
