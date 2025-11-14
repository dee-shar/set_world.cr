require "json"
require "http/client"

class SetWorld
  API_PATH = "api"
  def initialize
    @headers = HTTP::Headers{
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://set.world")
    @http_client = HTTP::Client.new(uri)
  end

  def get_advantages() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/advantages", headers: @headers).body)
  end

  def get_disadvantages() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/disdvantages", headers: @headers).body)
  end

  def get_skills() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/skills", headers: @headers).body)
  end

  def roll_item() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/roll/item", headers: @headers).body)
  end

  def roll_set() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/roll/set", headers: @headers).body)
  end

  def roll_character() : JSON::Any
    JSON.parse(
      @http_client.get("/#{API_PATH}/roll/character", headers: @headers).body)
  end
end
