require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require 'dotenv/load'

class YelpAdapter

  def initialize
    @api_key = ENV["YELP_API_KEY"]
  end

  def place_search(city, district, category = '', offset = 0)
    url = URI("https://api.yelp.com/v3/businesses/search?location=#{city}+#{district}&term=#{category}&limit=50&offset=#{offset}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request["authorization"] = "Bearer #{@api_key}"
    request["cache-control"] = 'no-cache'
    request["postman-token"] = ENV["YELP_POSTMAN_TOKEN"]
    response = http.request(request)
    @data_set = response.read_body
  end

  def data_set
    @data_set
  end


  def place_details(id)
    url = URI("https://api.yelp.com/v3/businesses/#{id}")
    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    request = Net::HTTP::Get.new(url)
    request["authorization"] = "Bearer #{@api_key}"
    request["cache-control"] = 'no-cache'
    request["postman-token"] = ENV["YELP_POSTMAN_TOKEN"]
    response = http.request(request)
    @data_set = response.read_body
  end


end
# test = YelpAdapter.new
# p test.place_search('san francisco', 'mission')
