module YelpAdapter
  class << self

  require "json"
  require "http"
  require "optparse"

  # Constants, do not change these
  API_HOST = "https://api.yelp.com"
  SEARCH_PATH = "/v3/businesses/search"
  BUSINESS_PATH = "/v3/businesses/"
  # DEFAULT_LOCATION = "San Francisco, CA"
  SEARCH_LIMIT = 5

  def longitude(latitude)
    longitude = longitude
  end


  # Returns a parsed json object of the request
    def search(term)
      url = "#{API_HOST}#{SEARCH_PATH}"
      params = {
        term: term,
        # location: DEFAULT_LOCATION,
        latitude: latitude,
        longitude: longitude,
        limit: SEARCH_LIMIT,
        open_now: true
      }

      response = HTTP.auth(ENV["AUTHORIZATION"]).get(url, params: params)

      response.parse
    end
  end
end