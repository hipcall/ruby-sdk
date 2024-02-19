# frozen_string_literal: true

require "test_helper"

class CallsResourceTest < Minitest::Test
	def test_list
		stub = stub_request("calls", response: stub_response(fixture: "calls/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v3", adapter: :test, stubs: stub)
		calls = client.calls.list
	
		assert_equal HipcallSdk::Collection, calls.class
		assert_equal HipcallSdk::Call, calls.data.first.class
	end

	def test_retrieve
		year = 2022
		mounth = 07
		day = 07
		call_uuid = "caedfd1b-25ec-447e-ad87-3b7eb3d358ea"
		stub = stub_request("calls/#{year}/#{mounth}/#{day}/#{call_uuid}", response: stub_response(fixture: "calls/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		call = client.calls.retrieve(year: year, mounth: mounth, day: day, call_uuid: call_uuid)
	
		assert_equal HipcallSdk::Call, call.class
		assert_equal "caedfd1b-25ec-447e-ad87-3b7eb3d358ea", call.uuid
	end
end
