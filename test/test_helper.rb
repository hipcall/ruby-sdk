$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "hipcall_sdk"
require "minitest/autorun"
require "faraday"
require "json"

class Minitest::Test
  def stub_request(path, response:, method: :get, body: {})
    Faraday::Adapter::Test::Stubs.new do |stub|
      arguments = [method, "https://use.hipcall.com/api/v3/#{path}"]
      arguments << body.to_json if [:post, :put, :patch].include?(method)
      stub.send(*arguments) { |env| response }
    end
  end

  def stub_response(fixture:, status: 200, headers: {"Content-Type" => "application/json"})
    [status, headers, File.read("test/fixtures/v3/#{fixture}.json")]
  end
end