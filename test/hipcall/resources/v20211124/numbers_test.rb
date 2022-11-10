require "test_helper"

class NumbersResourceTest < Minitest::Test
	def test_list
		stub = stub_request("numbers", response: stub_response(fixture: "numbers/list"))
		client = HipcallSdk::Client.new(api_key: "fake", version: "v20211124", adapter: :test, stubs: stub)
		numbers = client.numbers.list
	
		assert_equal HipcallSdk::Collection, numbers.class
		assert_equal HipcallSdk::Number, numbers.data.first.class
	end

	def test_retrieve
		number_id = 1
		stub = stub_request("numbers/#{number_id}", response: stub_response(fixture: "numbers/retrieve"))
		client = HipcallSdk::Client.new(api_key: "fake", adapter: :test, stubs: stub)
		number = client.numbers.retrieve(number_id: number_id)
	
		assert_equal HipcallSdk::Number, number.class
		assert_equal 1, number.id
	end
end
