require "test_helper"

class ClientTest < Minitest::Test
  def test_api_key
    client = Hipcall::Client.new api_key: "test"
    assert_equal "test", client.api_key
  end
end