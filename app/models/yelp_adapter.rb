module YelpAdapter
  class << self

require "json"
require "http"
require "optparse"


# Place holders for Yelp Fusion's OAuth 2.0 credentials. Grab them
# from https://www.yelp.com/developers/v3/manage_app
CLIENT_ID = ENV["CLIENT_ID"]
CLIENT_SECRET = ENV["CLIENT_SECRET"]


# Constants, do not change these
API_HOST = "https://api.yelp.com"
SEARCH_PATH = "/v3/businesses/search"
BUSINESS_PATH = "/v3/businesses/"  # trailing / because we append the business id to the path
# TOKEN_PATH = "/oauth2/token"
# GRANT_TYPE = "client_credentials"


DEFAULT_BUSINESS_ID = "yelp-san-francisco"
# DEFAULT_TERM = "grocery"
DEFAULT_LOCATION = "San Francisco, CA"
SEARCH_LIMIT = 5


# Returns a parsed json object of the request
def search(term)
  url = "#{API_HOST}#{SEARCH_PATH}"
  params = {
    term: term,
    # location: DEFAULT_LOCATION,
    latitude: 37.7618770,
    longitude: -122.4149990,
    limit: SEARCH_LIMIT,
    open_now: true
  }

  response = HTTP.auth(ENV["AUTHORIZATION"]).get(url, params: params)

  response.parse
end


# Look up a business by a given business id. Full documentation is online at:
# https://www.yelp.com/developers/documentation/v3/business
#
# business_id - a string business id
#
# Examples
#
#   business("yelp-san-francisco")
#   # => {
#          "name": "Yelp",
#          "id": "yelp-san-francisco"
#          ...
#        }
#
# Returns a parsed json object of the request
# def business(business_id)
#   url = "#{API_HOST}#{BUSINESS_PATH}#{business_id}"

#   response = HTTP.auth(ENV["AUTHORIZATION"]).get(url)
#   response.parse
# end

end
end