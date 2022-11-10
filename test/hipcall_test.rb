require "test_helper"

class HipcallTest < Minitest::Test
	def test_that_it_has_a_version_number
		refute_nil ::HipcallSdk::VERSION 
	end
end