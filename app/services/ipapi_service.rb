require 'net/http'
require 'json'

class IpapiService
  BASE_URL = 'https://ipapi.co'

  def self.get_location(ip)
    url = URI("#{BASE_URL}/#{ip}/json/")
    response = Net::HTTP.get(url)
    JSON.parse(response)
  rescue StandardError => e
    Rails.logger.error "Error fetching location: #{e.message}"
    nil
  end
end
